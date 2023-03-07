package com.smedialink.p031ui.languages;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.bots.data.repository.CountriesRepository;
import com.smedialink.p031ui.languages.LanguagesAdapter;
import io.reactivex.disposables.CompositeDisposable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.C3222ActionBar;
import org.telegram.p048ui.Components.SizeNotifierFrameLayout;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: LanguagesActivity.kt */
/* renamed from: com.smedialink.ui.languages.LanguagesActivity */
/* loaded from: classes3.dex */
public final class LanguagesActivity extends BaseFragment implements LanguagesAdapter.OnLanguageClickListener {
    private final CompositeDisposable disposable = new CompositeDisposable();
    private LanguagesAdapter languagesAdapter = new LanguagesAdapter(this);

    /* renamed from: me */
    private TLRPC$User f370me = MessagesController.getInstance(UserConfig.selectedAccount).getUser(Long.valueOf(UserConfig.getInstance(UserConfig.selectedAccount).getClientUserId()));
    private RecyclerView recyclerLanguages;
    private SizeNotifierFrameLayout rootContainer;

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.rootContainer = new SizeNotifierFrameLayout(context);
        LayoutInflater from = LayoutInflater.from(context);
        int i = C3158R.layout.fork_fragment_languages;
        SizeNotifierFrameLayout sizeNotifierFrameLayout = this.rootContainer;
        SizeNotifierFrameLayout fragmentView = null;
        if (sizeNotifierFrameLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
            sizeNotifierFrameLayout = null;
        }
        RecyclerView recyclerView = (RecyclerView) from.inflate(i, (ViewGroup) sizeNotifierFrameLayout, true).findViewById(C3158R.C3161id.recyclerLanguages);
        this.recyclerLanguages = recyclerView;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(context));
            recyclerView.setAdapter(this.languagesAdapter);
        }
        this.actionBar.setBackButtonImage(C3158R.C3160drawable.ic_ab_back);
        this.actionBar.setTitle(LocaleController.getInternalString(C3158R.string.neurobots_store_languages_screen_title));
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C3222ActionBar.ActionBarMenuOnItemClick() { // from class: com.smedialink.ui.languages.LanguagesActivity$createView$2
            @Override // org.telegram.p048ui.ActionBar.C3222ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    LanguagesActivity.this.finishFragment();
                }
            }
        });
        showLanguages();
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = this.rootContainer;
        if (sizeNotifierFrameLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("rootContainer");
        } else {
            fragmentView = sizeNotifierFrameLayout2;
        }
        this.fragmentView = fragmentView;
        Intrinsics.checkNotNullExpressionValue(fragmentView, "fragmentView");
        return fragmentView;
    }

    @Override // org.telegram.p048ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        this.disposable.clear();
        super.onFragmentDestroy();
    }

    @Override // com.smedialink.p031ui.languages.LanguagesAdapter.OnLanguageClickListener
    public void onLanguageClick(LanguageViewModel language) {
        Intrinsics.checkNotNullParameter(language, "language");
        CountriesRepository.Companion companion = CountriesRepository.Companion;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        companion.getInstance(parentActivity).setCurrentBotLanguage(language.getId());
        showLanguages();
        NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.botLanguageChanged, new Object[0]);
    }

    private final void showLanguages() {
        List<LanguageViewModel> listOf;
        int collectionSizeOrDefault;
        CountriesRepository.Companion companion = CountriesRepository.Companion;
        Activity parentActivity = getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "parentActivity");
        CountriesRepository companion2 = companion.getInstance(parentActivity);
        String str = this.f370me.phone;
        Intrinsics.checkNotNullExpressionValue(str, "me.phone");
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        String currentBotLanguage = companion2.getCurrentBotLanguage(str, langCode);
        String internalString = LocaleController.getInternalString(C3158R.string.neurobots_store_language_ru);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…robots_store_language_ru)");
        String internalString2 = LocaleController.getInternalString(C3158R.string.neurobots_store_language_en);
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.stri…robots_store_language_en)");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new LanguageViewModel[]{new LanguageViewModel("ru", internalString, false, 4, null), new LanguageViewModel("eng", internalString2, false, 4, null)});
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(listOf, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (LanguageViewModel languageViewModel : listOf) {
            languageViewModel.setChecked(Intrinsics.areEqual(currentBotLanguage, languageViewModel.getId()));
            arrayList.add(languageViewModel);
        }
        this.languagesAdapter.setLanguages(listOf);
    }
}
