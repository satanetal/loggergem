require "logger/version"

class Logger

		@@files_path
	# @param value [String] - путь куда сохранять логи
	def self.files_path= value
		@@files_path = value
	end

	# @param bool [Boolean] - сохранение логов локально в файл
		@@save_to_file
	def self.save_to_file= bool
		@@save_to_file = bool
	end

		@@save_to_db
	# @param bool [Boolean] - сохранение логов в базу данных
	def self.save_to_db= bool
		@@save_to_db
	end

		@@incoming_params
	# @param bool [Bollean] - входящие параметры
	def self.incoming_params= bool
		@@incoming_params = bool
	end

		@@output_params
	# @param bool [Bollean] - исходящие параметры
	def self.output_params= bool
		@@output_params = bool
	end

		@@processing_time
	# @param bool [Bollean] - время обработки запроса
	def self.processing_time= bool
		@@processing_time = bool
	end

			@@current_user
	# @param bool [Bollean] - текущий пользователь
	def self.current_user= bool
		@@current_user = bool
	end

	# Конфигурирует сам себя
	def self.configure
		yield self		
	end

	def self.config_hash
		{
			files_path: @@files_path,
			save_to_file: @@save_to_file,
			save_to_db: @@save_to_db,
			incoming_params: @@incoming_params,
			output_params: @@output_params,
			processing_time: @@processing_time,
			current_user: @@current_user
		}		
	end
end
