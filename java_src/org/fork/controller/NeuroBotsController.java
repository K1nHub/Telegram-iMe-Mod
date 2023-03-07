package org.fork.controller;

import android.content.SharedPreferences;
import com.smedialink.common.TelegramPreferenceKeys;
import java.util.Objects;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.fork.controller.NeuroBotsController;
import org.telegram.messenger.BaseController;
import p034j$.util.concurrent.ConcurrentHashMap;
import p034j$.util.concurrent.ConcurrentMap$EL;
import p034j$.util.function.Function;
/* compiled from: NeuroBotsController.kt */
/* loaded from: classes4.dex */
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
        setNeuroBotsEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isNeuroBotsEnabled(), TelegramPreferenceKeys.User.Default.isNeuroBotsEnabled()));
        setNeuroBotsEnabled(false);
        setNeuroBotsAutoEnabledInPersonalChats(preferences.getBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInPersonalChats(), TelegramPreferenceKeys.User.Default.isNeuroBotsAutoEnabledInPersonalChats()));
        setNeuroBotsAutoEnabledInGroups(preferences.getBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInGroups(), TelegramPreferenceKeys.User.Default.isNeuroBotsAutoEnabledInGroups()));
        setShowOftenUsedNeuroBotsEnabled(preferences.getBoolean(TelegramPreferenceKeys.User.isShowOftenUsedNeuroBotsEnabled(), TelegramPreferenceKeys.User.Default.isShowOftenUsedNeuroBotsEnabled()));
    }

    public final void saveConfig() {
        SharedPreferences.Editor edit = getUserConfig().getPreferencesPublic().edit();
        edit.putBoolean(TelegramPreferenceKeys.User.isNeuroBotsEnabled(), isNeuroBotsEnabled());
        edit.putBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInPersonalChats(), isNeuroBotsAutoEnabledInPersonalChats());
        edit.putBoolean(TelegramPreferenceKeys.User.isNeuroBotsAutoEnabledInGroups(), isNeuroBotsAutoEnabledInGroups());
        edit.putBoolean(TelegramPreferenceKeys.User.isShowOftenUsedNeuroBotsEnabled(), isShowOftenUsedNeuroBotsEnabled());
        edit.apply();
    }

    /* compiled from: NeuroBotsController.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: getInstance$lambda-0  reason: not valid java name */
        public static final NeuroBotsController m1929getInstance$lambda0(int i, Integer it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new NeuroBotsController(i);
        }

        public final NeuroBotsController getInstance(final int i) {
            Object computeIfAbsent = ConcurrentMap$EL.computeIfAbsent(NeuroBotsController.accountInstances, Integer.valueOf(i), new Function() { // from class: org.fork.controller.NeuroBotsController$Companion$$ExternalSyntheticLambda0
                @Override // p034j$.util.function.Function
                public /* synthetic */ Function andThen(Function function) {
                    return Objects.requireNonNull(function);
                }

                @Override // p034j$.util.function.Function
                public final Object apply(Object obj) {
                    NeuroBotsController m1929getInstance$lambda0;
                    m1929getInstance$lambda0 = NeuroBotsController.Companion.m1929getInstance$lambda0(i, (Integer) obj);
                    return m1929getInstance$lambda0;
                }

                @Override // p034j$.util.function.Function
                public /* synthetic */ Function compose(Function function) {
                    return Objects.requireNonNull(function);
                }
            });
            Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "accountInstances.compute…ontroller(accountIndex) }");
            return (NeuroBotsController) computeIfAbsent;
        }
    }
}
