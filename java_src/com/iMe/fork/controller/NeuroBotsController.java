package com.iMe.fork.controller;

import android.content.SharedPreferences;
import com.iMe.common.TelegramPreferenceKeys;
import com.iMe.fork.controller.NeuroBotsController;
import java.util.Objects;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BaseController;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.Function;
/* compiled from: NeuroBotsController.kt */
/* loaded from: classes3.dex */
public final class NeuroBotsController extends BaseController {
    public static final Companion Companion = new Companion(null);
    private static final ConcurrentHashMap<Integer, NeuroBotsController> accountInstances = new ConcurrentHashMap<>(5);
    private boolean isNeuroBotsAutoEnabledInGroups;
    private boolean isNeuroBotsAutoEnabledInPersonalChats;
    private boolean isNeuroBotsEnabled;
    private boolean isShowOftenUsedNeuroBotsEnabled;

    public static final NeuroBotsController getInstance(int i) {
        return Companion.getInstance(i);
    }

    public NeuroBotsController(int i) {
        super(i);
        this.isNeuroBotsEnabled = TelegramPreferenceKeys.User.Default.isNeuroBotsEnabled();
        this.isNeuroBotsAutoEnabledInPersonalChats = TelegramPreferenceKeys.User.Default.isNeuroBotsAutoEnabledInPersonalChats();
        this.isNeuroBotsAutoEnabledInGroups = TelegramPreferenceKeys.User.Default.isNeuroBotsAutoEnabledInGroups();
        this.isShowOftenUsedNeuroBotsEnabled = TelegramPreferenceKeys.User.Default.isShowOftenUsedNeuroBotsEnabled();
    }

    public final boolean isNeuroBotsEnabled() {
        return this.isNeuroBotsEnabled;
    }

    public final void setNeuroBotsEnabled(boolean z) {
        this.isNeuroBotsEnabled = z;
    }

    public final boolean isNeuroBotsAutoEnabledInPersonalChats() {
        return this.isNeuroBotsAutoEnabledInPersonalChats;
    }

    public final void setNeuroBotsAutoEnabledInPersonalChats(boolean z) {
        this.isNeuroBotsAutoEnabledInPersonalChats = z;
    }

    public final boolean isNeuroBotsAutoEnabledInGroups() {
        return this.isNeuroBotsAutoEnabledInGroups;
    }

    public final void setNeuroBotsAutoEnabledInGroups(boolean z) {
        this.isNeuroBotsAutoEnabledInGroups = z;
    }

    public final boolean isShowOftenUsedNeuroBotsEnabled() {
        return this.isShowOftenUsedNeuroBotsEnabled;
    }

    public final void setShowOftenUsedNeuroBotsEnabled(boolean z) {
        this.isShowOftenUsedNeuroBotsEnabled = z;
    }

    public final void loadConfig(SharedPreferences preferences) {
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        this.isNeuroBotsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isNeuroBotsEnabled(), TelegramPreferenceKeys.User.Default.isNeuroBotsEnabled());
        this.isNeuroBotsEnabled = false;
        this.isNeuroBotsAutoEnabledInPersonalChats = preferences.getBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInPersonalChats(), TelegramPreferenceKeys.User.Default.isNeuroBotsAutoEnabledInPersonalChats());
        this.isNeuroBotsAutoEnabledInGroups = preferences.getBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInGroups(), TelegramPreferenceKeys.User.Default.isNeuroBotsAutoEnabledInGroups());
        this.isShowOftenUsedNeuroBotsEnabled = preferences.getBoolean(TelegramPreferenceKeys.User.isShowOftenUsedNeuroBotsEnabled(), TelegramPreferenceKeys.User.Default.isShowOftenUsedNeuroBotsEnabled());
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isNeuroBotsEnabled(), this.isNeuroBotsEnabled);
        edit.putBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInPersonalChats(), this.isNeuroBotsAutoEnabledInPersonalChats);
        edit.putBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInGroups(), this.isNeuroBotsAutoEnabledInGroups);
        edit.putBoolean(TelegramPreferenceKeys.User.isShowOftenUsedNeuroBotsEnabled(), this.isShowOftenUsedNeuroBotsEnabled);
        edit.apply();
    }

    /* compiled from: NeuroBotsController.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final NeuroBotsController getInstance$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (NeuroBotsController) tmp0.invoke(obj);
        }

        public final NeuroBotsController getInstance(int i) {
            ConcurrentHashMap concurrentHashMap = NeuroBotsController.accountInstances;
            Integer valueOf = Integer.valueOf(i);
            final NeuroBotsController$Companion$getInstance$1 neuroBotsController$Companion$getInstance$1 = new NeuroBotsController$Companion$getInstance$1(i);
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, valueOf, new Function() { // from class: com.iMe.fork.controller.NeuroBotsController$Companion$$ExternalSyntheticLambda0
                @Override // p033j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p033j$.util.function.Function
                public final Object apply(Object obj) {
                    NeuroBotsController instance$lambda$0;
                    instance$lambda$0 = NeuroBotsController.Companion.getInstance$lambda$0(Function1.this, obj);
                    return instance$lambda$0;
                }

                @Override // p033j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountIndex: Int) = acc…ontroller(accountIndex) }");
            return (NeuroBotsController) computeIfAbsent;
        }
    }
}
