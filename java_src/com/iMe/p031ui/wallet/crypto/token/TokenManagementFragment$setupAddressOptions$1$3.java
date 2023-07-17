package com.iMe.p031ui.wallet.crypto.token;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.ActionBarMenuItem;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenManagementFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementFragment$setupAddressOptions$1$3 */
/* loaded from: classes4.dex */
public final class TokenManagementFragment$setupAddressOptions$1$3 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ ActionBarMenuItem $this_with;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenManagementFragment$setupAddressOptions$1$3(ActionBarMenuItem actionBarMenuItem) {
        super(1);
        this.$this_with = actionBarMenuItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.$this_with.toggleSubMenu();
    }
}
