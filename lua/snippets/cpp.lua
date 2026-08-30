local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- =================== General Cpp ===================================
local fori_table = {
    c(1, { t("i"), t("j"), t("k") }),
    rep(1),
    i(2, "n"),
    rep(1),
    i(0),
}
local fori_body = [[
for(ll {} = 0; {} < {}; {}++) {{
    {}
}}
]]
local forie_table = {
    c(1, { t("i"), t("j"), t("k") }),
    rep(1),
    i(2, "n"),
    rep(1),
    i(0),
}
local forie_body = [[
for(ll {} = 0; {} <= {}; {}++) {{
    {}
}}
]]
local forin_table = {
    c(1, { t("i"), t("j"), t("k") }),
    rep(1),
    i(2, "n"),
    rep(1),
    i(0),
}
local forin_body = [[
for(ll {} = 0; {} > {}; {}++) {{
    {}
}}
]]
local forine_table = {
    c(1, { t("i"), t("j"), t("k") }),
    rep(1),
    i(2, "n"),
    rep(1),
    i(0),
}
local forine_body = [[
for(ll {} = 0; {} >= {}; {}++) {{
    {}
}}
]]

local printV = [[
template <typename T>
void printV(const vector<T>& v, const string& sep = " ") {{
    for (const auto& x : v) {{
        cout << x << sep;
    }}
    cout << "\n";
}}
]]

local printVV = [[
template <typename T>
void printVV(const vector<vector<T>>& v, const string& sep = " ") {{
    for (const auto& row : v) {{
        for (const auto& x : row) {{
            cout << x << sep;
        }}
        cout << "\n";
    }}
}}
]]
-- =================== Competitive Programming ========================
local contest_table = { 
                        i(0),
                        c(1, { t(""), t("// ")} ),
                    }
local contest_body = [[
#include <bits/stdc++.h>
using namespace std;
typedef long long ll;
#define nline '\n'

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

    s("fori", fmt(fori_body, fori_table)),
    s("forie", fmt(forie_body, forie_table)),
    s("forin", fmt(forin_body, forin_table)),
    s("forine", fmt(forine_body, forine_table)),
    s("ptv", fmt(printV, {})),
    s("ptvv", fmt(printVV, {})),


}
