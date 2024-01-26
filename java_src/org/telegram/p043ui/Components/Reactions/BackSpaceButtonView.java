package org.telegram.p043ui.Components.Reactions;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.CombinedDrawable;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Stories.RoundRectOutlineProvider;
/* renamed from: org.telegram.ui.Components.Reactions.BackSpaceButtonView */
/* loaded from: classes6.dex */
public class BackSpaceButtonView extends FrameLayout {
    private final ImageView backspaceButton;
    private boolean backspaceOnce;
    private boolean backspacePressed;
    private Utilities.Callback<Boolean> onBackspace;
    private final Theme.ResourcesProvider resourcesProvider;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(View view) {
    }

    public BackSpaceButtonView(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        ImageView imageView = new ImageView(context) { // from class: org.telegram.ui.Components.Reactions.BackSpaceButtonView.1
            private long lastClick = 0;

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                if (motionEvent.getAction() == 0) {
                    if (System.currentTimeMillis() < this.lastClick + 350) {
                        return false;
                    }
                    this.lastClick = System.currentTimeMillis();
                    BackSpaceButtonView.this.backspacePressed = true;
                    BackSpaceButtonView.this.backspaceOnce = false;
                    BackSpaceButtonView.this.postBackspaceRunnable(350);
                } else if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                    BackSpaceButtonView.this.backspacePressed = false;
                    if (!BackSpaceButtonView.this.backspaceOnce && BackSpaceButtonView.this.onBackspace != null) {
                        BackSpaceButtonView.this.onBackspace.run(Boolean.FALSE);
                        BackSpaceButtonView.this.backspaceButton.performHapticFeedback(3);
                    }
                }
                super.onTouchEvent(motionEvent);
                return true;
            }
        };
        this.backspaceButton = imageView;
        imageView.setHapticFeedbackEnabled(true);
        imageView.setImageResource(C3632R.C3634drawable.smiles_tab_clear);
        imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_chat_emojiPanelBackspace), PorterDuff.Mode.MULTIPLY));
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setContentDescription(LocaleController.getString("AccDescrBackspace", C3632R.string.AccDescrBackspace));
        imageView.setFocusable(true);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Reactions.BackSpaceButtonView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BackSpaceButtonView.lambda$new$0(view);
            }
        });
        addView(imageView, LayoutHelper.createFrame(36, 36, 17));
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(AndroidUtilities.m107dp(36), getThemedColor(Theme.key_windowBackgroundWhite), Theme.getColor(Theme.key_listSelector));
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setBackground(createSimpleSelectorCircleDrawable);
            imageView.setOutlineProvider(new RoundRectOutlineProvider(18));
            imageView.setElevation(AndroidUtilities.m107dp(1));
            imageView.setClipToOutline(true);
        } else {
            Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.floating_shadow).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m107dp(36), AndroidUtilities.m107dp(36));
            imageView.setBackground(combinedDrawable);
        }
        setClickable(true);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(42), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(42), 1073741824));
    }

    public void setOnBackspace(Utilities.Callback<Boolean> callback) {
        this.onBackspace = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postBackspaceRunnable(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.BackSpaceButtonView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                BackSpaceButtonView.this.lambda$postBackspaceRunnable$1(i);
            }
        }, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$postBackspaceRunnable$1(int i) {
        if (this.backspacePressed) {
            Utilities.Callback<Boolean> callback = this.onBackspace;
            if (callback != null) {
                callback.run(Boolean.valueOf(i < 300));
                this.backspaceButton.performHapticFeedback(3);
            }
            this.backspaceOnce = true;
            postBackspaceRunnable(Math.max(50, i - 100));
        }
    }

    private int getThemedColor(int i) {
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return Theme.getColor(i);
    }
}
