package com.iMe.p031ui.topics;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.Property;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.ForkTopicsController;
import com.iMe.storage.domain.model.topics.TopicModel;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.p044ui.ActionBar.SimpleTextView;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.LayoutHelper;
/* compiled from: TopicProfileCell.kt */
/* renamed from: com.iMe.ui.topics.TopicProfileCell */
/* loaded from: classes3.dex */
public final class TopicProfileCell extends FrameLayout {
    private AnimatorSet animator;
    private final int currentAccount;
    private final Lazy deleteImageView$delegate;
    private final long dialogId;
    private final Lazy selectTopicTextView$delegate;
    private final Lazy topicView$delegate;

    static {
        new Companion(null);
    }

    public final long getDialogId() {
        return this.dialogId;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicProfileCell(Context context, long j) {
        super(context);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(context, "context");
        this.dialogId = j;
        lazy = LazyKt__LazyJVMKt.lazy(new TopicProfileCell$topicView$2(context));
        this.topicView$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new TopicProfileCell$selectTopicTextView$2(this));
        this.selectTopicTextView$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new TopicProfileCell$deleteImageView$2(this));
        this.deleteImageView$delegate = lazy3;
        this.currentAccount = UserConfig.selectedAccount;
        addView(getTopicView(), LayoutHelper.createFrame(-2, -2, 19, 16, 0, 0, 0));
        addView(getSelectTopicTextView(), LayoutHelper.createFrame(-2, -2, 19, 23, 0, 0, 0));
        addView(getDeleteImageView(), LayoutHelper.createFrame(48, 48, 21, 0, 0, 12, 0));
        setupListeners();
        updateColors();
    }

    private final TopicView getTopicView() {
        return (TopicView) this.topicView$delegate.getValue();
    }

    private final SimpleTextView getSelectTopicTextView() {
        return (SimpleTextView) this.selectTopicTextView$delegate.getValue();
    }

    private final ImageView getDeleteImageView() {
        return (ImageView) this.deleteImageView$delegate.getValue();
    }

    public final void setData(TopicModel topicModel) {
        List listOf;
        if (topicModel != null) {
            ViewExtKt.visible$default(getTopicView(), false, 1, null);
            ViewExtKt.invisible$default(getSelectTopicTextView(), false, 1, null);
            ImageView deleteImageView = getDeleteImageView();
            deleteImageView.setClickable(true);
            deleteImageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_stickers_menuSelector)));
            getTopicView().setTopic(topicModel, true);
        } else {
            ViewExtKt.invisible$default(getTopicView(), false, 1, null);
            ViewExtKt.visible$default(getSelectTopicTextView(), false, 1, null);
            ImageView deleteImageView2 = getDeleteImageView();
            deleteImageView2.setClickable(false);
            deleteImageView2.setBackground(null);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator[] objectAnimatorArr = new ObjectAnimator[5];
        SimpleTextView selectTopicTextView = getSelectTopicTextView();
        Property property = FrameLayout.TRANSLATION_X;
        float[] fArr = new float[1];
        float f = BitmapDescriptorFactory.HUE_RED;
        fArr[0] = AndroidUtilities.m55dp(topicModel != null ? -48.0f : 0.0f);
        objectAnimatorArr[0] = ObjectAnimator.ofFloat(selectTopicTextView, property, fArr);
        SimpleTextView selectTopicTextView2 = getSelectTopicTextView();
        Property property2 = FrameLayout.ALPHA;
        float[] fArr2 = new float[1];
        fArr2[0] = topicModel != null ? 0.0f : 1.0f;
        objectAnimatorArr[1] = ObjectAnimator.ofFloat(selectTopicTextView2, property2, fArr2);
        TopicView topicView = getTopicView();
        Property property3 = FrameLayout.TRANSLATION_X;
        float[] fArr3 = new float[1];
        fArr3[0] = AndroidUtilities.m55dp(topicModel != null ? 0.0f : -48.0f);
        objectAnimatorArr[2] = ObjectAnimator.ofFloat(topicView, property3, fArr3);
        TopicView topicView2 = getTopicView();
        Property property4 = FrameLayout.ALPHA;
        float[] fArr4 = new float[1];
        fArr4[0] = topicModel == null ? 0.0f : 1.0f;
        objectAnimatorArr[3] = ObjectAnimator.ofFloat(topicView2, property4, fArr4);
        ImageView deleteImageView3 = getDeleteImageView();
        Property property5 = FrameLayout.ROTATION;
        float[] fArr5 = new float[1];
        if (topicModel != null) {
            f = 135.0f;
        }
        fArr5[0] = f;
        objectAnimatorArr[4] = ObjectAnimator.ofFloat(deleteImageView3, property5, fArr5);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) objectAnimatorArr);
        animatorSet.playTogether(listOf);
        animatorSet.setDuration(200L);
        animatorSet.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.animator = animatorSet;
        animatorSet.start();
    }

    public final void updateColors() {
        getTopicView().updateColors();
        getSelectTopicTextView().setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText));
        getDeleteImageView().setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_switch2TrackChecked), PorterDuff.Mode.SRC_IN));
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(48), 1073741824));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SimpleTextView initSelectTopicTextView() {
        SimpleTextView simpleTextView = new SimpleTextView(getContext());
        simpleTextView.setText(LocaleController.getInternalString(C3290R.string.topics_select));
        simpleTextView.setTextSize(16);
        return simpleTextView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView initDeleteImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C3290R.C3292drawable.msg_add);
        return imageView;
    }

    private final void setupListeners() {
        getDeleteImageView().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.topics.TopicProfileCell$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TopicProfileCell.setupListeners$lambda$6(TopicProfileCell.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupListeners$lambda$6(TopicProfileCell this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AnimatorSet animatorSet = this$0.animator;
        if (animatorSet != null) {
            animatorSet.isRunning();
            ForkTopicsController.Companion.getInstance(this$0.currentAccount).removeTopicDialog(this$0.dialogId);
        }
    }

    /* compiled from: TopicProfileCell.kt */
    /* renamed from: com.iMe.ui.topics.TopicProfileCell$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
