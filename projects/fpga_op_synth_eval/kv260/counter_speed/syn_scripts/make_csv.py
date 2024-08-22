#!/usr/bin/env python

import pandas as pd


ws  = []
clks = []
oks  = []

for clk in [500, 585, 644, 725]:
    for w in range(8, 128+1, 8):
        name = f"w{w}_clk{clk}"
        print(name)

        with open(f"{name}/output.txt", 'r') as f:
            content = f.read()
        ok = not ("CRITICAL WARNING: [Timing 38-282]" in content)

        ws.append(w)
        clks.append(clk)
        oks.append(ok)

df = pd.DataFrame(data={"width": ws, "CLK": clks, "OK": oks})

df.to_csv("counter_result.csv", index=False)
