### SINGLE INDEX MODELS FOR SELECTED STOCKS

Supposed that the return on a common stock over a given time period is related to the return over the same period that is earned on a market index such as the widely cited S&P500.That is, if the market has gone up then it is likely that the stock has gone up, and if the market has gone down then it is likely that the stock has gone down. This approach leads to a relationship which is called a single-index model (or market model).

We donote the market index excess return by **Rm**, where *Rm = r_m - r_f* ( *r_f* represents the risk free rate taken as 3% in this work, and *r_m* is the market index return). We regress the excess return of a security, **Ri**, ( *Ri = r_i - rf* ), on the excess return of the index **Rm**. The regression equation is:

**Ri(t) = Alpha + Beta * Rm(t) + e(t)**

The intercept of this equation, denoted by the Greek letter **Alpha**, is the security's expected excess return *when the market excess return is zero*. The slope coeffcient, **Beta**, is the security beta. Beta measures the the sensitivity of a security's returns to the market index's returns: it is the amount by which the security return tends to increase or decrease for every 1% increase or decrease in the return on the index. The term **e(t)** known as the *random error term* simply showns that the market model does not explain security returns perfectly.The difference between what the return actually is and what it is expected to be, given the return on the market index, is attributed to the effectof the random error term.

Daily price of selected securities (Goldman Sachs, Lockheed Martin and Chevron) as well as their industry indeces (S5INBK, S5AERO, and S5OILG) and SP&500 were collected during three months approximately, from September 8 to November 11, 2014(source: Bloomberg Terminal). The data is processed in this application. There are three Tabs with the following funtionality   

* **Plot Stock and Index** - Share price of the three companies (GS, LMT, CVR) can be plotted againts its industry group index or Standard & Poor index (S&P500). The curves are superimpossed in the same graph for better comparison/visualization.

* **Security Market Line** - Daily adjusted excess security returns are used to calculate the security market line (SML). The linear regression line is also shown in the graph. Values of Alpha and Beta are reported at the bottom of the graph. Stocks with betas greater than 1 are more volatile than the market index and are known as agrresive stocks. In contrast, stocks with betas less than one are less volatile than the market index and are known as defensive stocks.

* **Data Summary** - A summary of the data is presented in this Tab. A summary of the share price (50 observations, Sep.8 to Nov. 11, 2014 ) for each company can be requested (first three choices) as well as a summary of the linear regression models (last three options).
