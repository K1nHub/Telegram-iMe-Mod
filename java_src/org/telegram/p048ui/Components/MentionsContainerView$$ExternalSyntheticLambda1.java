package org.telegram.p048ui.Components;

import androidx.dynamicanimation.animation.DynamicAnimation;
/* renamed from: org.telegram.ui.Components.MentionsContainerView$$ExternalSyntheticLambda1 */
/* loaded from: classes6.dex */
public final /* synthetic */ class MentionsContainerView$$ExternalSyntheticLambda1 implements DynamicAnimation.OnAnimationEndListener {
    public static final /* synthetic */ MentionsContainerView$$ExternalSyntheticLambda1 INSTANCE = new MentionsContainerView$$ExternalSyntheticLambda1();

    private /* synthetic */ MentionsContainerView$$ExternalSyntheticLambda1() {
    }

    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
    public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        MentionsContainerView.lambda$updateListViewTranslation$3(dynamicAnimation, z, f, f2);
    }
}
