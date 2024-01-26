package com.iMe.p030ui.adapter.provider;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.iMe.model.wallet.home.CryptoAccountItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoAccountProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$1 */
/* loaded from: classes.dex */
final class CryptoAccountProvider$convert$1 extends Lambda implements Function1<AppCompatTextView, Unit> {
    final /* synthetic */ CryptoAccountItem $item;
    final /* synthetic */ CryptoAccountProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoAccountProvider$convert$1(CryptoAccountProvider cryptoAccountProvider, CryptoAccountItem cryptoAccountItem) {
        super(1);
        this.this$0 = cryptoAccountProvider;
        this.$item = cryptoAccountItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AppCompatTextView appCompatTextView) {
        invoke2(appCompatTextView);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(CryptoAccountProvider this$0, CryptoAccountItem item, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.getOnAddressClickAction().invoke(item.getAddress());
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(AppCompatTextView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        final CryptoAccountProvider cryptoAccountProvider = this.this$0;
        final CryptoAccountItem cryptoAccountItem = this.$item;
        applyForView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.adapter.provider.CryptoAccountProvider$convert$1$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CryptoAccountProvider$convert$1.invoke$lambda$0(CryptoAccountProvider.this, cryptoAccountItem, view);
            }
        });
    }
}
