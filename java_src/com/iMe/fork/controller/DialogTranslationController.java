package com.iMe.fork.controller;

import com.google.android.exoplayer2.util.Util;
import com.iMe.fork.controller.DialogTranslationController;
import com.iMe.fork.models.backup.Backup;
import com.iMe.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao;
import com.iMe.storage.data.locale.p027db.model.translation.DialogTranslationSettingsDb;
import com.iMe.storage.data.mapper.dialogs.DialogSettingsMappingKt;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: DialogTranslationController.kt */
/* loaded from: classes3.dex */
public final class DialogTranslationController extends BaseController implements KoinComponent {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, DialogTranslationController> accountInstances;
    private static final Map<String, String> voiceTranslateLanguages;
    private final Lazy dao$delegate;
    private Map<Long, DialogTranslationSettings> translationSettings;

    public static final DialogTranslationController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public DialogTranslationController(int i) {
        super(i);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new DialogTranslationController$special$$inlined$inject$default$1(this, null, null));
        this.dao$delegate = lazy;
        this.translationSettings = new LinkedHashMap();
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DialogTranslationSettingsDao getDao() {
        return (DialogTranslationSettingsDao) this.dao$delegate.getValue();
    }

    public final Map<Long, DialogTranslationSettings> getTranslationSettings() {
        return this.translationSettings;
    }

    public final void restoreBackup(Backup backup) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<Long, DialogTranslationSettings> mutableMap;
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.getDialogSettings() != null) {
            List<DialogTranslationSettings> dialogSettings = backup.getDialogSettings();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(dialogSettings, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (Object obj : dialogSettings) {
                linkedHashMap.put(Long.valueOf(((DialogTranslationSettings) obj).getDialogId()), obj);
            }
            mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
            this.translationSettings = mutableMap;
            getDao().restoreBackup(getUserConfig().clientUserId, backup.getDialogSettings());
        }
    }

    public final List<DialogTranslationSettings> getBackupData() {
        List<DialogTranslationSettings> mutableList;
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.translationSettings.values());
        return mutableList;
    }

    public final void loadDialogTranslationSettings() {
        int collectionSizeOrDefault;
        Map<Long, DialogTranslationSettings> map = this.translationSettings;
        map.clear();
        List<DialogTranslationSettingsDb> allTranslationSettingsForUser = getDao().getAllTranslationSettingsForUser(getUserConfig().clientUserId);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allTranslationSettingsForUser, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (DialogTranslationSettingsDb dialogTranslationSettingsDb : allTranslationSettingsForUser) {
            arrayList.add(TuplesKt.m80to(Long.valueOf(dialogTranslationSettingsDb.getDialogId()), DialogSettingsMappingKt.mapToDomain(dialogTranslationSettingsDb)));
        }
        MapsKt__MapsKt.putAll(map, arrayList);
    }

    public final void setSettings(DialogTranslationSettings translationSettings, boolean z) {
        Intrinsics.checkNotNullParameter(translationSettings, "translationSettings");
        final DialogTranslationController$setSettings$runnable$1 dialogTranslationController$setSettings$runnable$1 = new DialogTranslationController$setSettings$runnable$1(this, translationSettings);
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.DialogTranslationController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogTranslationController.setSettings$lambda$3(Function0.this);
                }
            });
        } else {
            dialogTranslationController$setSettings$runnable$1.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setSettings$lambda$3(Function0 tmp0) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke();
    }

    public final DialogTranslationSettings getSettings(long j) {
        DialogTranslationSettings dialogTranslationSettings = this.translationSettings.get(Long.valueOf(j));
        if (dialogTranslationSettings == null) {
            dialogTranslationSettings = new DialogTranslationSettings(false, null, false, null, 0L, false, null, null, 255, null);
            dialogTranslationSettings.setDialogId(j);
            if (dialogTranslationSettings.getDialogId() == -1333667783) {
                dialogTranslationSettings.setOutTextTranslateEnabled(true);
                dialogTranslationSettings.setOutTextTranslateLangCode("ru");
                dialogTranslationSettings.setInTextTranslateEnabled(true);
            }
        }
        return dialogTranslationSettings;
    }

    /* compiled from: DialogTranslationController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getCurrentLocale() {
            Object obj;
            String str;
            boolean contains;
            Iterator it = DialogTranslationController.voiceTranslateLanguages.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                Map.Entry entry = (Map.Entry) obj;
                String[] systemLanguageCodes = Util.getSystemLanguageCodes();
                Intrinsics.checkNotNullExpressionValue(systemLanguageCodes, "getSystemLanguageCodes()");
                String langCode = (String) ArraysKt.firstOrNull(systemLanguageCodes);
                if (langCode == null) {
                    langCode = LocaleController.getInstance().getCurrentLocale().toLanguageTag();
                }
                Intrinsics.checkNotNullExpressionValue(langCode, "langCode");
                String lowerCase = langCode.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
                contains = StringsKt__StringsKt.contains((CharSequence) entry.getKey(), (CharSequence) lowerCase, true);
                if (contains) {
                    break;
                }
            }
            Map.Entry entry2 = (Map.Entry) obj;
            return (entry2 == null || (str = (String) entry2.getKey()) == null) ? "en-US" : str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final DialogTranslationController getInstance$lambda$1(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (DialogTranslationController) tmp0.invoke(obj);
        }

        public final DialogTranslationController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = DialogTranslationController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final DialogTranslationController$Companion$getInstance$1 dialogTranslationController$Companion$getInstance$1 = new DialogTranslationController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.DialogTranslationController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    DialogTranslationController instance$lambda$1;
                    instance$lambda$1 = DialogTranslationController.Companion.getInstance$lambda$1(Function1.this, obj);
                    return instance$lambda$1;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…ontroller(accountIndex) }");
            return (DialogTranslationController) computeIfAbsent;
        }
    }

    static {
        Map<String, String> mapOf;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m80to("ru-RU", "Russian (Russia)"), TuplesKt.m80to("ja-JP", "Japanese (Japan)"), TuplesKt.m80to("hi-IN", "Hindi (India)"), TuplesKt.m80to("fr-FR", "French (France)"), TuplesKt.m80to("pt-PT", "Portuguese (Portugal)"), TuplesKt.m80to("tr-TR", "Turkish (Turkey)"), TuplesKt.m80to("fa-IR", "Persian (Iran)"), TuplesKt.m80to("es-ES", "Spanish (Spain)"), TuplesKt.m80to("de-DE", "German (Germany)"), TuplesKt.m80to("ko-KR", "Korean (South Korea)"), TuplesKt.m80to("it-IT", "Italian (Italy)"), TuplesKt.m80to("ar-AE", "Arabic (United Arab Emirates)"), TuplesKt.m80to("jv-ID", "Javanese (Indonesia)"), TuplesKt.m80to("yue-Hant-HK", "Vietnamese (Vietnam)"), TuplesKt.m80to("vi-VN", "Chinese, Cantonese (Traditional, Hong Kong)"), TuplesKt.m80to("zh-TW (cmn-Hant-TW)", "Chinese, Mandarin (Traditional, Taiwan)"), TuplesKt.m80to("az-AZ", "Azerbaijani (Azerbaijan)"), TuplesKt.m80to("uz-UZ", "Uzbek (Uzbekistan)"), TuplesKt.m80to("uk-UA", "Ukrainian (Ukraine)"), TuplesKt.m80to("en-US", "English (United States)"), TuplesKt.m80to("en-GB", "English (United Kingdom)"));
        voiceTranslateLanguages = mapOf;
        accountInstances = new ConcurrentHashMap<>(5);
    }
}
