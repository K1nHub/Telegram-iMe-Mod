package com.iMe.fork.controller;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$TL_messageEmpty;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TemplatesController.kt */
/* loaded from: classes3.dex */
public final class TemplatesController$restoreBackup$1$3 extends Lambda implements Function1<TLRPC$Message, Boolean> {
    public static final TemplatesController$restoreBackup$1$3 INSTANCE = new TemplatesController$restoreBackup$1$3();

    TemplatesController$restoreBackup$1$3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(TLRPC$Message tLRPC$Message) {
        return Boolean.valueOf(tLRPC$Message instanceof TLRPC$TL_messageEmpty);
    }
}
