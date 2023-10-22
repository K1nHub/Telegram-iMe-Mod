package com.iMe.fork.utils;

import org.telegram.messenger.UserConfig;
/* compiled from: UserUtils.kt */
/* loaded from: classes3.dex */
public final class UserUtils {
    static {
        new UserUtils();
    }

    private UserUtils() {
    }

    public static final int getSelectedAccountPositionByUserId(long j) {
        for (int i = 0; i < 5; i++) {
            if (UserConfig.getInstance(i).getClientUserId() == j) {
                return i;
            }
        }
        return UserConfig.selectedAccount;
    }

    public static final boolean isUserActive(long j) {
        for (int i = 0; i < 5; i++) {
            if (UserConfig.getInstance(i).getClientUserId() == j) {
                return true;
            }
        }
        return false;
    }
}
