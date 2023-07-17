package com.iMe.p031ui.custom.backup.switcher;

import com.iMe.p031ui.custom.backup.BackupWordView;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: _Sequences.kt */
/* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$applyColors$lambda$2$$inlined$filterIsInstance$1 */
/* loaded from: classes3.dex */
public final class C2045xbf3f1d4f extends Lambda implements Function1<Object, Boolean> {
    public static final C2045xbf3f1d4f INSTANCE = new C2045xbf3f1d4f();

    public C2045xbf3f1d4f() {
        super(1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(Object obj) {
        return Boolean.valueOf(obj instanceof BackupWordView);
    }
}
