package org.telegram.messenger;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.iMe.fork.controller.LockedSectionsController;
import com.iMe.fork.enums.LockedSection;
/* loaded from: classes4.dex */
public class AppStartReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !"android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            return;
        }
        AndroidUtilities.runOnUIThread(AppStartReceiver$$ExternalSyntheticLambda0.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onReceive$0() {
        SharedConfig.loadConfig();
        if (SharedConfig.passcodeHash.length() > 0) {
            SharedConfig.appLocked = true;
            SharedConfig.saveConfig();
        }
        for (int i = 0; i < 5; i++) {
            if (UserConfig.getInstance(i).isClientActivated()) {
                LockedSectionsController lockedSectionsController = LockedSectionsController.getInstance(i);
                for (LockedSection lockedSection : LockedSection.values()) {
                    LockedSectionsController.SectionPasscodeData sectionsPasscodeData = lockedSectionsController.getSectionsPasscodeData(lockedSection);
                    if (sectionsPasscodeData != null && !sectionsPasscodeData.getPasscodeHash().isEmpty()) {
                        sectionsPasscodeData.setSectionLocked(true);
                    }
                }
                lockedSectionsController.saveConfig();
            }
        }
        ApplicationLoader.startPushService();
    }
}
