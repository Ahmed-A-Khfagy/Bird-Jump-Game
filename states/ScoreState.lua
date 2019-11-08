-- Author : Ahmed A. Khfagy
-- made in CS50 into to Game Development

-- this class represents the score state

ScoreState = Class{__includes = BasicState}

function ScoreState:enter(params)

    self.score = params

end

function ScoreState:update(dt)

    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then

        gStateMachine:change('title')

    end

end

function ScoreState:render()

    love.graphics.setFont(flappyFont)

    love.graphics.printf('huh, not again!', 0, 64, VIRTUAL_WIDTH, 'center')

    love.graphics.setFont(mediumFont)

    love.graphics.printf('Score: ' .. tostring(self.score), 0, 100, VIRTUAL_WIDTH, 'center')

    love.graphics.printf('Press enter to go to the title menu..', 0, 160, VIRTUAL_WIDTH, 'center')

end

function ScoreState:exit() end