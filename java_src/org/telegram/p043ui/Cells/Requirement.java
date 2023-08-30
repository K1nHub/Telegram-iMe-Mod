package org.telegram.p043ui.Cells;
/* compiled from: RequestPeerRequirementsCell.java */
/* renamed from: org.telegram.ui.Cells.Requirement */
/* loaded from: classes5.dex */
class Requirement {
    public int padding;
    public CharSequence text;

    private Requirement(CharSequence charSequence, int i) {
        this.text = charSequence;
        this.padding = i;
    }

    public static Requirement make(CharSequence charSequence) {
        return new Requirement(charSequence, 0);
    }

    public static Requirement make(int i, CharSequence charSequence) {
        return new Requirement(charSequence, i);
    }
}
