-- Author : Ahmed A. Khfagy
-- made in CS50 into to Game Development

-- this class represents the title state

TitleGameState = Class{__includes = BaseState}

function TitleGameState:init() end

function TitleGameState:update(dt)

    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then

        gStateMachine:change('countdown')

    end

end

function TitleGameState:render()

    love.graphics.setFont(flappyFont)

    love.graphics.printf('Birdy thingie!', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)

    love.graphics.printf('press enter', 0, 100, VIRTUAL_WIDTH, 'center')

end