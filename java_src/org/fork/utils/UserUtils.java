package org.fork.utils;

import org.telegram.messenger.UserConfig;
/* compiled from: UserUtils.kt */
/* loaded from: classes4.dex */
public final class UserUtils {
    static {
        new UserUtils();
    }

    private UserUtils() {
    }

    public static final int getSelectedAccountPositionByUserId(long j) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (UserConfig.getInstance(i).getClientUserId() == j) {
                return i;
            }
            if (i2 >= 5) {
                return UserConfig.selectedAccount;
            }
            i = i2;
        }
    }

    public static final boolean isUserActive(long j) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (UserConfig.getInstance(i).getClientUserId() == j) {
                return true;
            }
            if (i2 >= 5) {
                return false;
            }
            i = i2;
        }
    }
}
