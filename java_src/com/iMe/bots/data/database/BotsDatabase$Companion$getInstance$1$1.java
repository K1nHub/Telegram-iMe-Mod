package com.iMe.bots.data.database;

import android.content.Context;
import android.util.Log;
import androidx.room.RoomDatabase;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import com.iMe.bots.data.repository.BotsRepository;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BotsDatabase.kt */
/* loaded from: classes4.dex */
public final class BotsDatabase$Companion$getInstance$1$1 extends RoomDatabase.Callback {
    final /* synthetic */ Context $context;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BotsDatabase$Companion$getInstance$1$1(Context context) {
        this.$context = context;
    }

    @Override // androidx.room.RoomDatabase.Callback
    public void onOpen(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        super.onCreate(db);
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        final Context context = this.$context;
        newSingleThreadScheduledExecutor.execute(new Runnable() { // from class: com.iMe.bots.data.database.BotsDatabase$Companion$getInstance$1$1$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BotsDatabase$Companion$getInstance$1$1.onOpen$lambda$0(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onOpen$lambda$0(Context context) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Log.d("BotsDatabase", "onopen");
        BotsDatabase.Companion.getInstance(context).botsDao().insertButIgnore(BotsRepository.Companion.initialBotsList());
    }
}
