module ApplicationHelper

    # method to display svg images
    def show_svg(path)
        File.open("app/assets/images/#{path}", "rb") do |file|
            raw file.read
        end
    end
end
