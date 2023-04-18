package org.telegram.p044ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: org.telegram.ui.Components.HideViewAfterAnimation */
/* loaded from: classes6.dex */
public class HideViewAfterAnimation extends AnimatorListenerAdapter {
    private final View view;

    public HideViewAfterAnimation(View view) {
        this.view = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.view.setVisibility(8);
    }
}
