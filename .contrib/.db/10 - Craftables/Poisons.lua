root("Craftables", prof(40, {	-- Poisons
	["classes"] = { ROGUE },
	["groups"] = {
		-- #if CLASSIC
		i(5530),	-- Blinding Powder
		-- #endif
		i(3775),	-- Crippling Poison
		i(3776),	-- Crippling Poison II
		i(2892),	-- Deadly Poison
		i(2893),	-- Deadly Poison II
		i(8984),	-- Deadly Poison III
		i(8985),	-- Deadly Poison IV
		applyclassicphase(PHASE_FIVE, i(20844)),	-- Deadly Poison V
		applyclassicphase(TBC_PHASE_ONE, i(22053)),	-- Deadly Poison VI
		applyclassicphase(TBC_PHASE_ONE, i(22054)),	-- Deadly Poison VII
		i(6947),	-- Instant Poison
		i(6949),	-- Instant Poison II
		i(6950),	-- Instant Poison III
		i(8926),	-- Instant Poison IV
		i(8927),	-- Instant Poison V
		i(8928),	-- Instant Poison VI
		applyclassicphase(TBC_PHASE_ONE, i(21927)),	-- Instant Poison VII
		i(5237),	-- Mind-Numbing Poison
		i(6951),	-- Mind-Numbing Poison II
		i(9186),	-- Mind-Numbing Poison III
		i(10918),	-- Wound Poison
		i(10920),	-- Wound Poison II
		i(10921),	-- Wound Poison III
		i(10922),	-- Wound Poison IV
		applyclassicphase(TBC_PHASE_ONE, i(22055)),	-- Wound Poison V
	},
}));