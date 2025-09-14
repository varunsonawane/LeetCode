class Solution(object):
    def maxProfit(self, prices):
        max_profit = 0               # start with no profit
        min_price = float("inf")     # start with very large min price

        for i in range(len(prices)):
            # update min_price with the smaller of (current min, today's price)
            min_price = min(min_price, prices[i])

            # update max_profit with the larger of (current max, today's profit if sold today)
            max_profit = max(max_profit, prices[i] - min_price)

        return max_profit