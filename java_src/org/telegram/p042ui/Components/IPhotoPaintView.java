package org.telegram.p042ui.Components;

import android.view.View;
/* renamed from: org.telegram.ui.Components.IPhotoPaintView */
/* loaded from: classes6.dex */
public interface IPhotoPaintView {

    /* renamed from: org.telegram.ui.Components.IPhotoPaintView$-CC  reason: invalid class name */
    /* loaded from: classes6.dex */
    public final /* synthetic */ class CC {
        public static void $default$setOffsetTranslationX(IPhotoPaintView iPhotoPaintView, float f) {
        }

        public static View $default$getView(IPhotoPaintView _this) {
            if (_this instanceof View) {
                return (View) _this;
            }
            throw new IllegalArgumentException("You should override getView() if you're not inheriting from it.");
        }
    }
}
