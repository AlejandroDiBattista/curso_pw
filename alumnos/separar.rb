require "csv"
require 'fileutils'

def crear_carpetas(datos)
    puts "Generando carpetas para #{datos.count} alumnos"
    datos.each do |f|
        FileUtils.mkdir_p "#{f[:notes]}/#{f[:folder]}"
    end
end

alumnos = CSV.read("alumnos.csv", headers: true, header_converters: :symbol, encoding: "windows-1252:UTF-8", col_sep: ";")
p alumnos.headers
crear_carpetas alumnos

# csv.sort_by{|x|x[:nombre]}.uniq{|x|x[:nombre]}.each do |f|
#     n = f[:apellidos].to_i 
#     nombre, apellido = separar(f[:nombre], f[:apellidos].to_i)
#     pp [n, nombre, apellido, f[:email], f[:curso], f[:nombre], ]
#     salida << [apellido, nombre, f[:email], f[:curso]]
# end

