package com.iMe.bots.data.database;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
/* compiled from: BotsDatabase.kt */
/* loaded from: classes4.dex */
public abstract class BotsDatabase extends RoomDatabase {
    public static final Companion Companion = new Companion(null);
    private static volatile BotsDatabase INSTANCE;

    public abstract BotsDao botsDao();

    public abstract BotsCategoryDao categoryDao();

    public abstract HolidaysDao holidaysDao();

    public abstract RecentDao recentDao();

    public abstract BotsTagDao tagsDao();

    /* compiled from: BotsDatabase.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BotsDatabase getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (BotsDatabase.INSTANCE == null) {
                synchronized (Reflection.getOrCreateKotlinClass(BotsDatabase.class)) {
                    Companion companion = BotsDatabase.Companion;
                    BotsDatabase.INSTANCE = (BotsDatabase) Room.databaseBuilder(context.getApplicationContext(), BotsDatabase.class, "bots.db").addCallback(new BotsDatabase$Companion$getInstance$1$1(context)).fallbackToDestructiveMigration().addMigrations(Migrations.INSTANCE.getFROM_6_TO_7()).build();
                    Unit unit = Unit.INSTANCE;
                }
            }
            BotsDatabase botsDatabase = BotsDatabase.INSTANCE;
            Intrinsics.checkNotNull(botsDatabase);
            return botsDatabase;
        }
    }
}
