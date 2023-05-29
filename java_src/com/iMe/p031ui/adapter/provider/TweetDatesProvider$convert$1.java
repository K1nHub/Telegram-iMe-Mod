package com.iMe.p031ui.adapter.provider;

import android.content.res.ColorStateList;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.material.shape.MaterialShapeDrawable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TweetDatesProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetDatesProvider$convert$1 */
/* loaded from: classes.dex */
public final class TweetDatesProvider$convert$1 extends Lambda implements Function1<TextView, Unit> {
    public static final TweetDatesProvider$convert$1 INSTANCE = new TweetDatesProvider$convert$1();

    TweetDatesProvider$convert$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(TextView textView) {
        invoke2(textView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(final TextView applyForView) {
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        if (ViewCompat.isLaidOut(applyForView) && !applyForView.isLayoutRequested()) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_chat_serviceBackground)));
            materialShapeDrawable.setCornerSize(applyForView.getHeight() / 2.0f);
            applyForView.setBackground(materialShapeDrawable);
            return;
        }
        applyForView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.iMe.ui.adapter.provider.TweetDatesProvider$convert$1$invoke$$inlined$doOnLayout$1
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                Intrinsics.checkNotNullParameter(view, "view");
                view.removeOnLayoutChangeListener(this);
                TextView textView = applyForView;
                MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
                materialShapeDrawable2.setFillColor(ColorStateList.valueOf(Theme.getColor(Theme.key_chat_serviceBackground)));
                materialShapeDrawable2.setCornerSize(view.getHeight() / 2.0f);
                textView.setBackground(materialShapeDrawable2);
            }
        });
    }
}
