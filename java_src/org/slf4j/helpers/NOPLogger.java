package org.slf4j.helpers;
/* loaded from: classes4.dex */
public class NOPLogger extends MarkerIgnoringBase {
    public static final NOPLogger NOP_LOGGER = new NOPLogger();

    @Override // org.slf4j.Logger
    public final void error(String str) {
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.Logger
    public String getName() {
        return "NOP";
    }

    @Override // org.slf4j.Logger
    public final void info(String str) {
    }

    @Override // org.slf4j.Logger
    public final void info(String str, Object obj) {
    }

    protected NOPLogger() {
    }
}
