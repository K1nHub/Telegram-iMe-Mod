package com.iMe.fork.p023ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.enums.DrawerSocialNetwork;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.LayoutHelper;
/* compiled from: SocialNetworksRowView.kt */
/* renamed from: com.iMe.fork.ui.view.SocialNetworksRowView */
/* loaded from: classes3.dex */
public final class SocialNetworksRowView extends LinearLayout {
    private OnSocialNetworkClickListener listener;

    /* compiled from: SocialNetworksRowView.kt */
    /* renamed from: com.iMe.fork.ui.view.SocialNetworksRowView$OnSocialNetworkClickListener */
    /* loaded from: classes3.dex */
    public interface OnSocialNetworkClickListener {
        void onSocialNetworkClick(DrawerSocialNetwork drawerSocialNetwork, boolean z);
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocialNetworksRowView(Context context) {
        super(context);
        DrawerSocialNetwork[] values;
        Intrinsics.checkNotNullParameter(context, "context");
        setWillNotDraw(false);
        for (final DrawerSocialNetwork drawerSocialNetwork : DrawerSocialNetwork.values()) {
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector)));
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.fork.ui.view.SocialNetworksRowView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SocialNetworksRowView.lambda$4$lambda$2$lambda$0(SocialNetworksRowView.this, drawerSocialNetwork, view);
                }
            });
            frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.iMe.fork.ui.view.SocialNetworksRowView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$4$lambda$2$lambda$1;
                    lambda$4$lambda$2$lambda$1 = SocialNetworksRowView.lambda$4$lambda$2$lambda$1(SocialNetworksRowView.this, drawerSocialNetwork, view);
                    return lambda$4$lambda$2$lambda$1;
                }
            });
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_menuItemIcon), PorterDuff.Mode.SRC_IN));
            imageView.setImageResource(drawerSocialNetwork.getIconResId());
            frameLayout.addView(imageView, LayoutHelper.createFrame(-2, -2, 17));
            addView(frameLayout, LayoutHelper.createLinear(0, -1, 1.0f));
        }
    }

    public final OnSocialNetworkClickListener getListener() {
        return this.listener;
    }

    public final void setListener(OnSocialNetworkClickListener onSocialNetworkClickListener) {
        this.listener = onSocialNetworkClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void lambda$4$lambda$2$lambda$0(SocialNetworksRowView this$0, DrawerSocialNetwork network, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(network, "$network");
        OnSocialNetworkClickListener onSocialNetworkClickListener = this$0.listener;
        if (onSocialNetworkClickListener != null) {
            onSocialNetworkClickListener.onSocialNetworkClick(network, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean lambda$4$lambda$2$lambda$1(SocialNetworksRowView this$0, DrawerSocialNetwork network, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(network, "$network");
        OnSocialNetworkClickListener onSocialNetworkClickListener = this$0.listener;
        if (onSocialNetworkClickListener != null) {
            onSocialNetworkClickListener.onSocialNetworkClick(network, true);
        }
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawLine(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), AndroidUtilities.m104dp(AndroidUtilities.getShadowHeight()), Theme.dividerPaint);
    }

    /* compiled from: SocialNetworksRowView.kt */
    /* renamed from: com.iMe.fork.ui.view.SocialNetworksRowView$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
