package com.iMe.p032ui.wallet.crypto.create;

import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletFragment$setupViewsContents$1$1 */
/* loaded from: classes3.dex */
public final class CreateWalletFragment$setupViewsContents$1$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ CreateWalletFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$setupViewsContents$1$1(CreateWalletFragment createWalletFragment) {
        super(0);
        this.this$0 = createWalletFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        CreateWalletFragment createWalletFragment = this.this$0;
        CreateWalletFragment newInstance = CreateWalletFragment.Companion.newInstance(CreateWalletScreenType.TooBad.INSTANCE);
        newInstance.fragmentToRemove = this.this$0;
        createWalletFragment.presentFragment(newInstance);
    }
}
