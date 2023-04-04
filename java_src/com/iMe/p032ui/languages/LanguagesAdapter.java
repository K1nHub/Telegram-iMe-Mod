package com.iMe.p032ui.languages;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.CompoundButtonCompat;
import com.iMe.utils.common.ViewBindingAdapterHolder;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.databinding.ForkCountryItemListBinding;
import org.telegram.p048ui.ActionBar.Theme;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: LanguagesAdapter.kt */
/* renamed from: com.iMe.ui.languages.LanguagesAdapter */
/* loaded from: classes3.dex */
public final class LanguagesAdapter extends RecyclerListView.ViewBindingSelectionAdapter<ForkCountryItemListBinding> {
    private List<LanguageViewModel> items;
    private final OnLanguageClickListener onCountryClickListener;

    /* compiled from: LanguagesAdapter.kt */
    /* renamed from: com.iMe.ui.languages.LanguagesAdapter$OnLanguageClickListener */
    /* loaded from: classes3.dex */
    public interface OnLanguageClickListener {
        void onLanguageClick(LanguageViewModel languageViewModel);
    }

    public LanguagesAdapter(OnLanguageClickListener onCountryClickListener) {
        List<LanguageViewModel> emptyList;
        Intrinsics.checkNotNullParameter(onCountryClickListener, "onCountryClickListener");
        this.onCountryClickListener = onCountryClickListener;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.items = emptyList;
    }

    public final void setLanguages(List<LanguageViewModel> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewBindingAdapterHolder<ForkCountryItemListBinding> onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new ViewBindingAdapterHolder<>(ForkCountryItemListBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewBindingAdapterHolder<ForkCountryItemListBinding> holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        final LanguageViewModel languageViewModel = this.items.get(i);
        ForkCountryItemListBinding binding = holder.getBinding();
        binding.textCountryName.setText(languageViewModel.getName());
        binding.textCountryName.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
        binding.checkbox.setChecked(languageViewModel.getChecked());
        CompoundButtonCompat.setButtonTintList(binding.checkbox, new ColorStateList(new int[][]{new int[]{-16842912}, new int[]{16842912}}, new int[]{Theme.getColor("windowBackgroundWhiteBlackText"), Theme.getColor("chats_actionBackground")}));
        binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.languages.LanguagesAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguagesAdapter.onBindViewHolder$lambda$1$lambda$0(LanguagesAdapter.this, languageViewModel, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindViewHolder$lambda$1$lambda$0(LanguagesAdapter this$0, LanguageViewModel country, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(country, "$country");
        this$0.onCountryClickListener.onLanguageClick(country);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }
}
