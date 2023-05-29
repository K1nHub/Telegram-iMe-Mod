package com.iMe.p031ui.adapter.provider;

import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TweetProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetProvider$convert$1$1 */
/* loaded from: classes.dex */
public final class TweetProvider$convert$1$1 extends Lambda implements Function1<TextView, Unit> {
    public static final TweetProvider$convert$1$1 INSTANCE = new TweetProvider$convert$1$1();

    TweetProvider$convert$1$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TextView textView) {
        invoke2(textView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TextView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setLinkTextColor(Theme.getColor(Theme.key_chats_actionBackground));
        applyForView.setMovementMethod(LinkMovementMethod.getInstance());
    }
}
