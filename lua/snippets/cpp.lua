local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

local contest_table = { 
                        i(0),
                        c(1, { t(""), t("// ")} ),
                    }
local contest_body = [[
#include <bits/stdc++.h>
using namespace std;
typedef long long ll;

void solve() {{
    {}
}}

int main() {{
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    
    ll t = 1;
    {}cin >> t;
    while(t--) {{
        solve();
    }}
    return 0;
}}
]]

local mod_table = { c(1, { t("1e+7"), t({"998244353"}) } ), i(0), }

local mod_body = [[
ll MOD = {};
{}
]]

local binaryPower_table = {}
local binaryPower_body = [[ 
ll binaryPower(ll x, ll p) {{
    ll res = 1;
    while(p) {{
        if(p&1) res = res * x % MOD;
        x = x*x % MOD;
        p >>=1;
    }}
    return res;
}}

]]

local factorial_table = { c(1,{ t(" % MOD"), t("")}), i(0) }
local factorial_body = [[

vector<ll> factorial;

void fillFactorial() {{
    ll size = factorial.size();
    if (size == 0) return;
    for(ll i = 1; i < size; i++) {{
        factorial[i] = factorial[i-1] * i{};
    }}
}}
{}
]]

local inverseFactorial_table = { c(1, { t(""), t("vector<ll> invFactorial;"), }), i(0), }
local inverseFactorial_body = [[
{}
void fillInvFactorial() {{
    ll size = invFactorial.size();
    invFactorial[size-1] = binaryPower(factorial[size-1], MOD-2);

    for(ll i = size-2; i >= 0; i++) {{
        invFactorial[i] = invFactorial[i+1] * (i+1) % MOD;
    }}
}}    
{}
]]

local combination_table = {}
local combination_body = [[
ll combination(ll n, ll r) {{
    if (r < 0 || r > n) return 0;
    return factorial[n] * invFactorial[r] % MOD * invFactorial[n - r] % MOD;
}}

]]



return {
    s("//open", t("~/.config/nvim/lua/snippets/cpp.lua")),
    s("//ct", fmt(contest_body, contest_table)),
    s("//mod", fmt(mod_body, mod_table)),
    s("//bp", fmt(binaryPower_body, binaryPower_table)),
    s("//fact", fmt(factorial_body, factorial_table)),
    s("//invfact", fmt(inverseFactorial_body, inverseFactorial_table)),
    s("//ncr", fmt(combination_body, combination_table)),

}
