package com.iMe.p032ui.custom.backup;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: _Sequences.kt */
/* renamed from: com.iMe.ui.custom.backup.SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1 */
/* loaded from: classes3.dex */
public final class SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1 extends Lambda implements Function1<Object, Boolean> {
    public static final SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1 INSTANCE = new SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1();

    public SeedListView$applyColorForSeedWord$$inlined$filterIsInstance$1() {
        super(1);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(Object obj) {
        return Boolean.valueOf(obj instanceof NumberBackupWordWrapper);
    }
}
