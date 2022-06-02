class InputScreen
    def tap_radio(linguagem)
        @locator_radio = "//android.widget.RadioButton[contains(@text, '#{linguagem}')]"
        find_element(xpath: @locator_radio).click
    end

    def value_radio
        return find_element(xpath: @locator_radio)
    end

    def tap_check(tech)
        @locator_check = "//android.widget.CheckBox[contains(@text, '#{tech}')]"
        find_element(xpath: @locator_check).click
    end

    def find_check(tech)
        @locator_check = "//android.widget.CheckBox[contains(@text, '#{tech}')]"
        find_element(xpath: @locator_check)
    end

    def value_check
        return find_element(xpath: @locator_check)
    end

    
end