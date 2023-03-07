package org.fork.controller;

import java.util.Objects;
import org.fork.models.backup.TopicBackup;
import p034j$.util.function.Predicate;
/* loaded from: classes4.dex */
public final /* synthetic */ class BackupController$$ExternalSyntheticLambda3 implements Predicate {
    public static final /* synthetic */ BackupController$$ExternalSyntheticLambda3 INSTANCE = new BackupController$$ExternalSyntheticLambda3();

    private /* synthetic */ BackupController$$ExternalSyntheticLambda3() {
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate and(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public /* synthetic */ Predicate negate() {
        return Predicate.CC.$default$negate(this);
    }

    @Override // p034j$.util.function.Predicate
    /* renamed from: or */
    public /* synthetic */ Predicate mo21or(Predicate predicate) {
        return Objects.requireNonNull(predicate);
    }

    @Override // p034j$.util.function.Predicate
    public final boolean test(Object obj) {
        boolean m1890migrateToCurrentVersion$lambda21;
        m1890migrateToCurrentVersion$lambda21 = BackupController.m1890migrateToCurrentVersion$lambda21((TopicBackup) obj);
        return m1890migrateToCurrentVersion$lambda21;
    }
}
