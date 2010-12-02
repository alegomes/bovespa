class Bovespa

	def initialize(codigo_ativo)
		Net::HTTP.start('www.bmfbovespa.com.br') do |http|
			@resultado = http.get('/cotacoes2000/formCotacoesMobile.asp?codsocemi='+codigo_ativo).body
		end
		@info = Nokogiri::XML(@resultado)
		
		@info.css('PAPEL').each do |node|
			@descricao = node['DESCRICAO']
			@codigo = node['CODIGO']
			@ibovespa = node['IBOVESPA']
			@data = node['DATA']
			@hora = node['HORA']
			@oscilacao = node['OSCILACAO']
			@ultimo_valor = node['VALOR_ULTIMO']
			@quantidade_negociada = node['QUANT_NEG']
			@mercado = node['MERCADO']
		end
	end

	def descricao
		@descricao
	end

	def codigo
		@codigo
	end

	def ibovespa
		if @ibovespa == 'S'
			@ibovespa="Sim"
		else 
			@ibovespa="Não"
		end
	end

	def data
		@data
	end

	def hora
		@hora
	end

	def oscilacao
		@oscilacao
	end

	def ultimo_valor
		@ultimo_valor
	end

	def quantidade_negociada
		@quantidade_negociada
	end

	def mercado
		@mercado
	end


end
