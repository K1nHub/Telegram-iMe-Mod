package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.ChatProfileController;
import com.iMe.fork.enums.ChatProfileDialogType;
import com.iMe.fork.enums.ChatProfileTelegramIdMode;
import com.iMe.fork.models.backup.Backup;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BaseController;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: ChatProfileController.kt */
/* loaded from: classes3.dex */
public final class ChatProfileController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, ChatProfileController> accountInstances = new ConcurrentHashMap<>(5);
    private boolean isChatProfileEnabled;
    private Set<ChatProfileDialogType> selectedChatProfileDialogTypes;
    private String selectedChatProfileTelegramIdMode;

    public static final ChatProfileController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public ChatProfileController(int i) {
        super(i);
        this.isChatProfileEnabled = TelegramPreferenceKeys.Global.Default.isChatProfileEnabled();
        this.selectedChatProfileDialogTypes = new LinkedHashSet();
        this.selectedChatProfileTelegramIdMode = TelegramPreferenceKeys.Global.Default.selectedChatProfileTelegramIdMode().name();
    }

    public final boolean isChatProfileEnabled() {
        return this.isChatProfileEnabled;
    }

    public final void setChatProfileEnabled(boolean z) {
        this.isChatProfileEnabled = z;
    }

    public final Set<ChatProfileDialogType> getSelectedChatProfileDialogTypes() {
        return this.selectedChatProfileDialogTypes;
    }

    public final void setSelectedChatProfileDialogTypes(Set<ChatProfileDialogType> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.selectedChatProfileDialogTypes = set;
    }

    public final String getSelectedChatProfileTelegramIdMode() {
        return this.selectedChatProfileTelegramIdMode;
    }

    public final void setSelectedChatProfileTelegramIdMode(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.selectedChatProfileTelegramIdMode = str;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isChatProfileEnabled = preferences.getBoolean(TelegramPreferenceKeys.Global.isChatProfileEnabled(), TelegramPreferenceKeys.Global.Default.isChatProfileEnabled());
        ChatProfileDialogType.Companion companion = ChatProfileDialogType.Companion;
        this.selectedChatProfileDialogTypes = companion.mapNamesToEnums(preferences.getStringSet(TelegramPreferenceKeys.Global.selectedChatProfileDialogTypes(), companion.mapEnumsToNames(TelegramPreferenceKeys.Global.Default.selectedChatProfileDialogTypes())));
        this.selectedChatProfileTelegramIdMode = ChatProfileTelegramIdMode.Companion.mapNameToEnum(preferences.getString(TelegramPreferenceKeys.Global.selectedChatProfileTelegramIdMode(), TelegramPreferenceKeys.Global.Default.selectedChatProfileTelegramIdMode().name())).toString();
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.Global.isChatProfileEnabled(), this.isChatProfileEnabled);
        edit.putStringSet(TelegramPreferenceKeys.Global.selectedChatProfileDialogTypes(), ChatProfileDialogType.Companion.mapEnumsToNames(this.selectedChatProfileDialogTypes)).apply();
        edit.putString(TelegramPreferenceKeys.Global.selectedChatProfileTelegramIdMode(), this.selectedChatProfileTelegramIdMode).apply();
    }

    public final void restoreBackup(Backup backup) {
        Intrinsics.checkNotNullParameter(backup, "backup");
        if (backup.isChatProfileEnabled() != null) {
            this.isChatProfileEnabled = backup.isChatProfileEnabled().booleanValue();
        }
        if (backup.getSelectedChatProfileDialogTypes() != null) {
            this.selectedChatProfileDialogTypes = ChatProfileDialogType.Companion.mapNamesToEnums(backup.getSelectedChatProfileDialogTypes());
        }
        if (backup.getSelectedChatProfileTelegramIdMode() != null) {
            this.selectedChatProfileTelegramIdMode = backup.getSelectedChatProfileTelegramIdMode();
        }
        saveConfig();
    }

    public final List<String> getChatProfileDialogType() {
        List<ChatProfileDialogType> sortedWith;
        int collectionSizeOrDefault;
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.selectedChatProfileDialogTypes, new Comparator() { // from class: com.iMe.fork.controller.ChatProfileController$getChatProfileDialogType$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((ChatProfileDialogType) t).ordinal()), Integer.valueOf(((ChatProfileDialogType) t2).ordinal()));
                return compareValues;
            }
        });
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sortedWith, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ChatProfileDialogType chatProfileDialogType : sortedWith) {
            arrayList.add(chatProfileDialogType.getTitle());
        }
        return arrayList;
    }

    /* compiled from: ChatProfileController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final ChatProfileController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (ChatProfileController) tmp0.invoke(obj);
        }

        public final ChatProfileController getInstance(final int i) {
            ConcurrentHashMap concurrentHashMap = ChatProfileController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final Function1<Integer, ChatProfileController> function1 = new Function1<Integer, ChatProfileController>() { // from class: com.iMe.fork.controller.ChatProfileController$Companion$getInstance$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ChatProfileController invoke(Integer it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return new ChatProfileController(i);
                }
            };
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.ChatProfileController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Function.CC.$default$andThen(this, function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    ChatProfileController instance$lambda$0;
                    instance$lambda$0 = ChatProfileController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Function.CC.$default$compose(this, function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) =\n   …ontroller(accountIndex) }");
            return (ChatProfileController) computeIfAbsent;
        }
    }
}
