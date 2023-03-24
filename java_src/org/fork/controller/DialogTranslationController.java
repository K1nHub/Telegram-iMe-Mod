package org.fork.controller;

import com.smedialink.storage.data.locale.p027db.dao.main.DialogTranslationSettingsDao;
import com.smedialink.storage.data.locale.p027db.model.translation.DialogTranslationSettingsDb;
import com.smedialink.storage.data.mapper.dialogs.DialogSettingsMappingKt;
import com.smedialink.storage.domain.model.dialogs.DialogTranslationSettings;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
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
import org.fork.controller.DialogTranslationController;
import org.fork.models.backup.Backup;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: DialogTranslationController.kt */
/* loaded from: classes4.dex */
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
            arrayList.add(TuplesKt.m99to(Long.valueOf(dialogTranslationSettingsDb.getDialogId()), DialogSettingsMappingKt.mapToDomain(dialogTranslationSettingsDb)));
        }
        MapsKt__MapsKt.putAll(map, arrayList);
    }

    public final void setSettings(DialogTranslationSettings translationSettings, boolean z) {
        Intrinsics.checkNotNullParameter(translationSettings, "translationSettings");
        final DialogTranslationController$setSettings$runnable$1 dialogTranslationController$setSettings$runnable$1 = new DialogTranslationController$setSettings$runnable$1(this, translationSettings);
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.fork.controller.DialogTranslationController$$ExternalSyntheticLambda0
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
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Map<String, String> getVoiceTranslateLanguages() {
            return DialogTranslationController.voiceTranslateLanguages;
        }

        public final String getCurrentLocale() {
            Object obj;
            String str;
            boolean contains$default;
            Iterator<T> it = getVoiceTranslateLanguages().entrySet().iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                String languageTag = LocaleController.getInstance().getCurrentLocale().toLanguageTag();
                Intrinsics.checkNotNullExpressionValue(languageTag, "getInstance().currentLocale.toLanguageTag()");
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) ((Map.Entry) next).getKey(), (CharSequence) languageTag, false, 2, (Object) null);
                if (contains$default) {
                    obj = next;
                    break;
                }
            }
            Map.Entry entry = (Map.Entry) obj;
            return (entry == null || (str = (String) entry.getKey()) == null) ? "en-US" : str;
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
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: org.fork.controller.DialogTranslationController$Companion$$ExternalSyntheticLambda0
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
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m99to("ru-RU", "Russian (Russia)"), TuplesKt.m99to("ja-JP", "Japanese (Japan)"), TuplesKt.m99to("hi-IN", "Hindi (India)"), TuplesKt.m99to("fr-FR", "French (France)"), TuplesKt.m99to("pt-PT", "Portuguese (Portugal)"), TuplesKt.m99to("tr-TR", "Turkish (Turkey)"), TuplesKt.m99to("fa-IR", "Persian (Iran)"), TuplesKt.m99to("es-ES", "Spanish (Spain)"), TuplesKt.m99to("de-DE", "German (Germany)"), TuplesKt.m99to("ko-KR", "Korean (South Korea)"), TuplesKt.m99to("it-IT", "Italian (Italy)"), TuplesKt.m99to("ar-AE", "Arabic (United Arab Emirates)"), TuplesKt.m99to("jv-ID", "Javanese (Indonesia)"), TuplesKt.m99to("yue-Hant-HK", "Vietnamese (Vietnam)"), TuplesKt.m99to("vi-VN", "Chinese, Cantonese (Traditional, Hong Kong)"), TuplesKt.m99to("zh-TW (cmn-Hant-TW)", "Chinese, Mandarin (Traditional, Taiwan)"), TuplesKt.m99to("az-AZ", "Azerbaijani (Azerbaijan)"), TuplesKt.m99to("uz-UZ", "Uzbek (Uzbekistan)"), TuplesKt.m99to("uk-UA", "Ukrainian (Ukraine)"), TuplesKt.m99to("en-US", "English (United States)"), TuplesKt.m99to("en-GB", "English (United Kingdom)"));
        voiceTranslateLanguages = mapOf;
        accountInstances = new ConcurrentHashMap<>(5);
    }
}
