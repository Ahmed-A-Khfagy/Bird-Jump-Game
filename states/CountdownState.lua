-- Author : Ahmed A. Khfagy
-- made in CS50 into to Game Development

-- this class is for the countdown state

CountdownState = Class{__includes = BasicState}

COUNTDOWN_TIME = 0.75

function CountdownState:init()

    self.count = 3

    self.timer = 0

end

function CountdownState:update(dt)

    self.timer = self.timer + dt

    if self.timer > COUNTDOWN_TIME then

        self.timer = self.timer % COUNTDOWN_TIME

        self.count = self.count - 1

        if self.count == 0 then

            gStateMachine:change('play')

        end

    end

end

function CountdownState:render()

    love.graphics.setFont(hugeFont)

    love.graphics.printf(tostring(self.count), 0, 120, VIRTUAL_WIDTH, 'center')

end

function CountdownState:enter() end

function CountdownState:exit() end