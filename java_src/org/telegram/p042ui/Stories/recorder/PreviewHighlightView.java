package org.telegram.p042ui.Stories.recorder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.text.SpannableString;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.AnimatedEmojiSpan;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Stories.PeerStoriesView;
import org.telegram.p042ui.Stories.StoryCaptionView;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Stories.recorder.PreviewHighlightView */
/* loaded from: classes6.dex */
public class PreviewHighlightView extends FrameLayout {
    private final FrameLayout bottom;
    private int currentAccount;
    private boolean shownBottom;
    private boolean shownTop;
    private int storiesCount;
    private final StoryCaptionView storyCaptionView;
    private final FrameLayout top;

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public PreviewHighlightView(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.storiesCount = 1;
        this.shownTop = false;
        this.shownBottom = false;
        this.currentAccount = i;
        TLRPC$User currentUser = UserConfig.getInstance(i).getCurrentUser();
        FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.Stories.recorder.PreviewHighlightView.1
            private RectF rectF = new RectF();
            private Paint barPaint = new Paint(1);

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                this.barPaint.setColor(-1);
                float width = ((getWidth() - (AndroidUtilities.dpf2(5.0f) * 2.0f)) - AndroidUtilities.dpf2((PreviewHighlightView.this.storiesCount - 1) * 2)) / PreviewHighlightView.this.storiesCount;
                float dpf2 = AndroidUtilities.dpf2(5.0f);
                int i2 = 0;
                while (i2 < PreviewHighlightView.this.storiesCount) {
                    this.rectF.set(dpf2, AndroidUtilities.dpf2(8.0f), dpf2 + width, AndroidUtilities.dpf2(10.0f));
                    this.barPaint.setAlpha(i2 < PreviewHighlightView.this.storiesCount + (-1) ? 255 : 133);
                    canvas.drawRoundRect(this.rectF, AndroidUtilities.dpf2(1.0f), AndroidUtilities.dpf2(1.0f), this.barPaint);
                    dpf2 += AndroidUtilities.dpf2(2.0f) + width;
                    i2++;
                }
            }
        };
        this.top = frameLayout;
        PeerStoriesView.PeerHeaderView peerHeaderView = new PeerStoriesView.PeerHeaderView(getContext(), null);
        peerHeaderView.backupImageView.getAvatarDrawable().setInfo(currentUser);
        BackupImageView backupImageView = peerHeaderView.backupImageView;
        backupImageView.setForUserOrChat(currentUser, backupImageView.getAvatarDrawable());
        peerHeaderView.titleView.setText(Emoji.replaceEmoji(UserObject.getUserName(currentUser), peerHeaderView.titleView.getPaint().getFontMetricsInt(), false));
        peerHeaderView.setSubtitle(LocaleController.getString("RightNow", C3630R.string.RightNow), false);
        frameLayout.addView(peerHeaderView, LayoutHelper.createFrame(-1, -2, 55, 0, 17, 0, 0));
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(getContext().getResources().getDrawable(C3630R.C3632drawable.ic_close_white).mutate());
        imageView.setPadding(AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8));
        frameLayout.addView(imageView, LayoutHelper.createFrame(40, 40, 53, 12, 15, 12, 0));
        addView(frameLayout, LayoutHelper.createFrame(-1, -2));
        FrameLayout frameLayout2 = new FrameLayout(getContext());
        this.bottom = frameLayout2;
        StoryCaptionView storyCaptionView = new StoryCaptionView(getContext(), resourcesProvider);
        this.storyCaptionView = storyCaptionView;
        storyCaptionView.disableTouches = true;
        storyCaptionView.setTranslationY(AndroidUtilities.m102dp(8));
        frameLayout2.addView(storyCaptionView, LayoutHelper.createFrame(-1, -1, 87, 0, 0, 0, 64));
        ImageView imageView2 = new ImageView(context);
        imageView2.setImageResource(C3630R.C3632drawable.msg_share);
        imageView2.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        frameLayout2.addView(imageView2, LayoutHelper.createFrame(28, 28, 85, 0, 0, 12, 16));
        FrameLayout frameLayout3 = new FrameLayout(context);
        frameLayout3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m102dp(22), ColorUtils.setAlphaComponent(-16777216, 122)));
        TextView textView = new TextView(context);
        textView.setTextSize(1, 18.0f);
        textView.setTextColor(1694498815);
        textView.setText(LocaleController.getString("ReplyPrivately", C3630R.string.ReplyPrivately));
        frameLayout3.addView(textView, LayoutHelper.createFrame(-2, -2, 19, 24, 0, 24, 0));
        ImageView imageView3 = new ImageView(context);
        imageView3.setImageResource(C3630R.C3632drawable.input_attach);
        imageView3.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.MULTIPLY));
        frameLayout3.addView(imageView3, LayoutHelper.createFrame(28, 28, 21, 0, 0, 9, 0));
        frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(-1, 44, 87, 9, 8, 55, 8));
        addView(frameLayout2, LayoutHelper.createFrame(-1, -1));
        frameLayout.setAlpha(BitmapDescriptorFactory.HUE_RED);
        frameLayout2.setAlpha(BitmapDescriptorFactory.HUE_RED);
    }

    public void updateCount() {
        this.storiesCount = MessagesController.getInstance(this.currentAccount).getStoriesController().getSelfStoriesCount() + 1;
        this.top.invalidate();
    }

    public void updateCaption(CharSequence charSequence) {
        this.storyCaptionView.captionTextview.setText(AnimatedEmojiSpan.cloneSpans(new SpannableString(charSequence)), false, false);
    }

    public void show(boolean z, boolean z2, View view) {
        if (z) {
            if (this.shownTop == z2) {
                return;
            }
            this.shownTop = z2;
        } else if (this.shownBottom == z2) {
            return;
        } else {
            this.shownBottom = z2;
        }
        FrameLayout frameLayout = z ? this.top : this.bottom;
        frameLayout.clearAnimation();
        ViewPropertyAnimator animate = frameLayout.animate();
        float f = BitmapDescriptorFactory.HUE_RED;
        animate.alpha(z2 ? z ? 0.5f : 0.2f : 0.0f).start();
        if (view != null) {
            view.clearAnimation();
            ViewPropertyAnimator animate2 = view.animate();
            if (!z2) {
                f = 1.0f;
            }
            animate2.alpha(f).start();
        }
    }
}
