

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * The test class StepCounterTest.
 *
 * @author  (your name)
 * @version (a version number or a date)
 */
public class StepCounterTest
{
    @Test
    public void stepCountTester(){
        StepCounter steps = new StepCounter();
        steps.addSteps(250);
        steps.addSteps(-50);
        assertEquals(250, steps.getSteps());
        steps.reset();
        assertEquals(0, steps.getSteps());
    }
}