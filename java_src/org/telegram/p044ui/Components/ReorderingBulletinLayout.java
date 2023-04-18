package org.telegram.p044ui.Components;

import android.content.Context;
import android.widget.ImageView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.Bulletin;
/* renamed from: org.telegram.ui.Components.ReorderingBulletinLayout */
/* loaded from: classes6.dex */
public class ReorderingBulletinLayout extends Bulletin.SimpleLayout {
    private final ReorderingHintDrawable hintDrawable;

    public ReorderingBulletinLayout(Context context, String str, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        this.textView.setText(str);
        this.textView.setTranslationY(-1.0f);
        ImageView imageView = this.imageView;
        ReorderingHintDrawable reorderingHintDrawable = new ReorderingHintDrawable();
        this.hintDrawable = reorderingHintDrawable;
        imageView.setImageDrawable(reorderingHintDrawable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Components.Bulletin.Layout
    public void onEnterTransitionEnd() {
        super.onEnterTransitionEnd();
        this.hintDrawable.startAnimation();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.telegram.p044ui.Components.Bulletin.Layout
    public void onExitTransitionEnd() {
        super.onExitTransitionEnd();
        this.hintDrawable.resetAnimation();
    }
}