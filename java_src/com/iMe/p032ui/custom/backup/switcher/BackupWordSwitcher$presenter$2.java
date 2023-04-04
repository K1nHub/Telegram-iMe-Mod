package com.iMe.p032ui.custom.backup.switcher;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: BackupWordSwitcher.kt */
/* renamed from: com.iMe.ui.custom.backup.switcher.BackupWordSwitcher$presenter$2 */
/* loaded from: classes3.dex */
final class BackupWordSwitcher$presenter$2 extends Lambda implements Function0<BackupWordSwitcherPresenter> {
    final /* synthetic */ BackupWordSwitcher this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackupWordSwitcher$presenter$2(BackupWordSwitcher backupWordSwitcher) {
        super(0);
        this.this$0 = backupWordSwitcher;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final BackupWordSwitcherPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new BackupWordSwitcher$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (BackupWordSwitcherPresenter) lazy.getValue();
    }
}
