require "csv"
require 'fileutils'

def crear_carpetas(datos, folder = nil)
    puts "Generando carpetas para #{datos.count} alumnos"
    datos.each do |f|
        FileUtils.mkdir_p  [f[:notes], f[:folder], folder].compact.join("/")
    end
end

alumnos = CSV.read("alumnos.csv", headers: true, header_converters: :symbol, encoding: "windows-1252:UTF-8", col_sep: ";")
# p alumnos.headers
crear_carpetas alumnos


