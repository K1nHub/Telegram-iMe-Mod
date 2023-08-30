package com.iMe.model.reaction;

import org.telegram.messenger.C3558R;
/* compiled from: ReactionButtonsRowsType.kt */
/* loaded from: classes3.dex */
public enum ReactionButtonsRowsType {
    SINGLE(C3558R.string.chat_reaction_one_line),
    TWO(C3558R.string.chat_reaction_two_lines),
    THREE(C3558R.string.chat_reaction_three_lines);
    
    private final int resource;

    ReactionButtonsRowsType(int i) {
        this.resource = i;
    }

    public final int getResource() {
        return this.resource;
    }
}
