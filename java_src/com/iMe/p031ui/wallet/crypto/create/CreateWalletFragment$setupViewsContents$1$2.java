package com.iMe.p031ui.wallet.crypto.create;

import android.app.Activity;
import com.iMe.p031ui.wallet.crypto.create.secret_words_count.SecretWordsCountBottomSheetDialog;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupViewsContents$1$2 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$setupViewsContents$1$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$setupViewsContents$1$2(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateWalletFragment.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupViewsContents$1$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21011 extends Lambda implements Function1<Integer, Unit> {
        final /* synthetic */ CreateWalletFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21011(CreateWalletFragment createWalletFragment) {
            super(1);
            this.this$0 = createWalletFragment;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            invoke(num.intValue());
            return Unit.INSTANCE;
        }

        public final void invoke(int i) {
            this.this$0.fillEditTextContainer(i);
        }
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CreateWalletFragment createWalletFragment = this.this$0;
        SecretWordsCountBottomSheetDialog.Companion companion = SecretWordsCountBottomSheetDialog.Companion;
        Activity parentActivity = createWalletFragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        createWalletFragment.showDialog(companion.newInstance(parentActivity, new C21011(this.this$0)));
    }
}
