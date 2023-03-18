package org.fork.controller;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TemplatesController.kt */
/* loaded from: classes4.dex */
public final class TemplatesController$restoreBackup$1$4 extends Lambda implements Function1<TLRPC$Message, Integer> {
    public static final TemplatesController$restoreBackup$1$4 INSTANCE = new TemplatesController$restoreBackup$1$4();

    TemplatesController$restoreBackup$1$4() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Integer invoke(TLRPC$Message tLRPC$Message) {
        return Integer.valueOf(tLRPC$Message.f1523id);
    }
}
