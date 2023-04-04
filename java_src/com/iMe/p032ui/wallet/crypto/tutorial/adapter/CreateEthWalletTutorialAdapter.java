package com.iMe.p032ui.wallet.crypto.tutorial.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager.widget.PagerAdapter;
import com.iMe.model.wallet.crypto.tutorial.TutorialPage;
import com.iMe.storage.domain.utils.system.ResourceManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.databinding.ForkItemAdapterWalletEthTutorialBinding;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.RLottieImageView;
/* compiled from: CreateEthWalletTutorialAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.tutorial.adapter.CreateEthWalletTutorialAdapter */
/* loaded from: classes3.dex */
public final class CreateEthWalletTutorialAdapter extends PagerAdapter {
    private final Context context;
    private List<TutorialPage> items;
    private final ResourceManager resourceManager;

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        Intrinsics.checkNotNullParameter(object, "object");
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object object) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(object, "object");
        return view == object;
    }

    public CreateEthWalletTutorialAdapter(Context context, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.context = context;
        this.resourceManager = resourceManager;
        this.items = new ArrayList();
    }

    public final List<TutorialPage> getItems() {
        return this.items;
    }

    public final void setItems(List<TutorialPage> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.items = value;
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup collection, int i) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        ForkItemAdapterWalletEthTutorialBinding inflate = ForkItemAdapterWalletEthTutorialBinding.inflate(LayoutInflater.from(this.context), collection, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.f…text), collection, false)");
        TutorialPage tutorialPage = this.items.get(i);
        inflate.textTitle.setTextColor(Theme.getColor("chat_messagePanelText"));
        inflate.textDescription.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText2"));
        RLottieImageView rLottieImageView = inflate.imageLogo;
        rLottieImageView.setAutoRepeat(true);
        rLottieImageView.setAnimation(tutorialPage.getAnimatedIcon(), ImageReceiver.DEFAULT_CROSSFADE_DURATION, ImageReceiver.DEFAULT_CROSSFADE_DURATION);
        rLottieImageView.playAnimation();
        inflate.textTitle.setText(this.resourceManager.getString(tutorialPage.getTitle()));
        inflate.textDescription.setText(this.resourceManager.getString(tutorialPage.getDescription()));
        collection.addView(inflate.getRoot());
        LinearLayout root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "binding.root");
        return root;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup collection, int i, Object view) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        Intrinsics.checkNotNullParameter(view, "view");
        collection.removeView((View) view);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.items.size();
    }
}
