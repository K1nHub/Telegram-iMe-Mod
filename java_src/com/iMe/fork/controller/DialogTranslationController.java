package com.iMe.fork.controller;

import com.iMe.fork.controller.DialogTranslationController;
import com.iMe.fork.models.backup.Backup;
import com.iMe.storage.data.locale.p026db.dao.main.DialogTranslationSettingsDao;
import com.iMe.storage.data.locale.p026db.model.translation.DialogTranslationSettingsDb;
import com.iMe.storage.data.mapper.dialogs.DialogSettingsMappingKt;
import com.iMe.storage.domain.model.dialogs.DialogTranslationSettings;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
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
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<DialogTranslationSettingsDao>() { // from class: com.iMe.fork.controller.DialogTranslationController$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.data.locale.db.dao.main.DialogTranslationSettingsDao, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DialogTranslationSettingsDao invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(DialogTranslationSettingsDao.class), qualifier, function0);
            }
        });
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
            arrayList.add(TuplesKt.m149to(Long.valueOf(dialogTranslationSettingsDb.getDialogId()), DialogSettingsMappingKt.mapToDomain(dialogTranslationSettingsDb)));
        }
        MapsKt__MapsKt.putAll(map, arrayList);
    }

    public final void setSettings(final DialogTranslationSettings translationSettings, boolean z) {
        Intrinsics.checkNotNullParameter(translationSettings, "translationSettings");
        final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.iMe.fork.controller.DialogTranslationController$setSettings$runnable$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DialogTranslationSettingsDao dao;
                UserConfig userConfig;
                Map map;
                dao = DialogTranslationController.this.getDao();
                DialogTranslationSettings dialogTranslationSettings = translationSettings;
                userConfig = DialogTranslationController.this.getUserConfig();
                dao.insert((DialogTranslationSettingsDao) DialogSettingsMappingKt.mapToDb(dialogTranslationSettings, userConfig.clientUserId));
                map = DialogTranslationController.this.translationSettings;
                map.put(Long.valueOf(translationSettings.getDialogId()), translationSettings);
            }
        };
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.iMe.fork.controller.DialogTranslationController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DialogTranslationController.setSettings$lambda$3(Function0.this);
                }
            });
        } else {
            function0.invoke();
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
            boolean contains$default;
            Iterator it = DialogTranslationController.voiceTranslateLanguages.entrySet().iterator();
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

        public final DialogTranslationController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = DialogTranslationController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, DialogTranslationController> function1 = new Function1<Integer, DialogTranslationController>() { // from class: com.iMe.fork.controller.DialogTranslationController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DialogTranslationController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new DialogTranslationController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.DialogTranslationController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    DialogTranslationController instance$lambda$1;
                    instance$lambda$1 = DialogTranslationController.Companion.getInstance$lambda$1(Function1.this, obj);
                    return instance$lambda$1;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…r(accountIndex)\n        }");
            return (DialogTranslationController) computeIfAbsent;
        }
    }

    static {
        Map<String, String> mapOf;
        mapOf = MapsKt__MapsKt.mapOf(TuplesKt.m149to("ru-RU", "Russian (Russia)"), TuplesKt.m149to("ja-JP", "Japanese (Japan)"), TuplesKt.m149to("hi-IN", "Hindi (India)"), TuplesKt.m149to("fr-FR", "French (France)"), TuplesKt.m149to("pt-PT", "Portuguese (Portugal)"), TuplesKt.m149to("tr-TR", "Turkish (Turkey)"), TuplesKt.m149to("fa-IR", "Persian (Iran)"), TuplesKt.m149to("es-ES", "Spanish (Spain)"), TuplesKt.m149to("de-DE", "German (Germany)"), TuplesKt.m149to("ko-KR", "Korean (South Korea)"), TuplesKt.m149to("it-IT", "Italian (Italy)"), TuplesKt.m149to("ar-AE", "Arabic (United Arab Emirates)"), TuplesKt.m149to("jv-ID", "Javanese (Indonesia)"), TuplesKt.m149to("yue-Hant-HK", "Vietnamese (Vietnam)"), TuplesKt.m149to("vi-VN", "Chinese, Cantonese (Traditional, Hong Kong)"), TuplesKt.m149to("zh-TW (cmn-Hant-TW)", "Chinese, Mandarin (Traditional, Taiwan)"), TuplesKt.m149to("az-AZ", "Azerbaijani (Azerbaijan)"), TuplesKt.m149to("uz-UZ", "Uzbek (Uzbekistan)"), TuplesKt.m149to("uk-UA", "Ukrainian (Ukraine)"), TuplesKt.m149to("en-US", "English (United States)"), TuplesKt.m149to("en-GB", "English (United Kingdom)"));
        voiceTranslateLanguages = mapOf;
        accountInstances = new ConcurrentHashMap<>(5);
    }
}
