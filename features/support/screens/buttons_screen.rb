class ButtonsScreen
    def click_shot
        return find_element(:id, "io.qaninja.android.twp:id/short_click").click
    end
    def button
        return find_element(:id, "io.qaninja.android.twp:id/long_click")
    end
    def long_click
        @button_element = find_element(:id, "io.qaninja.android.twp:id/long_click")
        Appium::TouchAction.new.press(element: @button_element).wait(2000).release.perform
    end
end