import { Given, When, Then, type DataTable, setDefaultTimeout } from '@cucumber/cucumber'
import { Ensure, equals } from '@serenity-js/assertions'
import { type Actor } from '@serenity-js/core'
import { TodoList } from '../../serenity/todo-list-app/TodoList.js'
setDefaultTimeout(60 * 1000);
Given('{actor} starts/started with a list containing:', async (actor: Actor, table: DataTable) => {
    await actor.attemptsTo(
        TodoList.createListContaining(itemsFrom(table)),
    )
})

When('{pronoun} marks/marked the following item(s) as completed:', async (actor: Actor, table: DataTable) => {
    await actor.attemptsTo(
        TodoList.markAsCompleted(itemsFrom(table)),
    )
})

When('{pronoun} marks/marked the following item(s) as outstanding:', async (actor: Actor, table: DataTable) => {
    await actor.attemptsTo(
        TodoList.markAsOutstanding(itemsFrom(table)),
    )
})

Then('{pronoun} should see that she has {int} item(s) outstanding', async (actor: Actor, expectedCount: number) => {
    await actor.attemptsTo(
        Ensure.that(TodoList.outstandingItemsCount(), equals(expectedCount)),
    )
})

/**
 * Extracts the data from a single-column Cucumber DataTable and returns it as an `Array<string>`
 *
 * @param table
 */
function itemsFrom(table: DataTable): string[] {
    return table.raw().map(row => row[0])
}
