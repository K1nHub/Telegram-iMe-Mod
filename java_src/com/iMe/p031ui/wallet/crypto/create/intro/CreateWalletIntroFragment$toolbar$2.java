package com.iMe.p031ui.wallet.crypto.create.intro;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.C3484ActionBar;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletIntroFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroFragment$toolbar$2 */
/* loaded from: classes4.dex */
public final class CreateWalletIntroFragment$toolbar$2 extends Lambda implements Function0<C3484ActionBar> {
    final /* synthetic */ CreateWalletIntroFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletIntroFragment$toolbar$2(CreateWalletIntroFragment createWalletIntroFragment) {
        super(0);
        this.this$0 = createWalletIntroFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final C3484ActionBar invoke() {
        C3484ActionBar initActionBar;
        initActionBar = this.this$0.initActionBar();
        return initActionBar;
    }
}
