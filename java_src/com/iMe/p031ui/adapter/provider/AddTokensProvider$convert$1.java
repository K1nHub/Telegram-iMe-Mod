package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.TextViewCompat;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AddTokensProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.AddTokensProvider$convert$1 */
/* loaded from: classes.dex */
public final class AddTokensProvider$convert$1 extends Lambda implements Function1<AppCompatTextView, Unit> {
    public static final AddTokensProvider$convert$1 INSTANCE = new AddTokensProvider$convert$1();

    AddTokensProvider$convert$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(AppCompatTextView appCompatTextView) {
        invoke2(appCompatTextView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(AppCompatTextView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        TextViewCompat.setCompoundDrawableTintList(applyForView, ColorStateList.valueOf(Theme.getColor(Theme.key_chats_actionBackground)));
    }
}
