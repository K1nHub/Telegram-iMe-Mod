package com.smedialink.p031ui.wallet.crypto.create.secret_words_count;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: SecretWordsCountBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.secret_words_count.SecretWordsCountBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
final class SecretWordsCountBottomSheetDialog$presenter$2 extends Lambda implements Function0<SecretWordsCountPresenter> {
    final /* synthetic */ SecretWordsCountBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecretWordsCountBottomSheetDialog$presenter$2(SecretWordsCountBottomSheetDialog secretWordsCountBottomSheetDialog) {
        super(0);
        this.this$0 = secretWordsCountBottomSheetDialog;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SecretWordsCountPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2076x4b006a38(this.this$0, null, null));
        return (SecretWordsCountPresenter) lazy.getValue();
    }
}
