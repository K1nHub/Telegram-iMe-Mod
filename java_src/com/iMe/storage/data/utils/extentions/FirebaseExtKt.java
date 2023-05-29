package com.iMe.storage.data.utils.extentions;

import android.app.Activity;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Single;
import io.reactivex.SingleEmitter;
import io.reactivex.SingleOnSubscribe;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class FirebaseExtKt {
    public static final <TResult> Observable<TResult> asObservableTask(final Task<TResult> task, final Activity activity) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Observable<TResult> create = Observable.create(new ObservableOnSubscribe() { // from class: com.iMe.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda6
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                FirebaseExtKt.asObservableTask$lambda$9(Task.this, activity, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …ncelled\")\n        }\n    }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asObservableTask$lambda$9(Task this_asObservableTask, Activity activity, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this_asObservableTask, "$this_asObservableTask");
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this_asObservableTask.addOnFailureListener(activity, new OnFailureListener() { // from class: com.iMe.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                FirebaseExtKt.asObservableTask$lambda$9$lambda$5(ObservableEmitter.this, exc);
            }
        });
        final FirebaseExtKt$asObservableTask$2$2 firebaseExtKt$asObservableTask$2$2 = new FirebaseExtKt$asObservableTask$2$2(emitter);
        this_asObservableTask.addOnSuccessListener(activity, new OnSuccessListener() { // from class: com.iMe.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirebaseExtKt.asObservableTask$lambda$9$lambda$6(Function1.this, obj);
            }
        });
        this_asObservableTask.addOnCompleteListener(activity, new OnCompleteListener() { // from class: com.iMe.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                FirebaseExtKt.asObservableTask$lambda$9$lambda$7(ObservableEmitter.this, task);
            }
        });
        this_asObservableTask.addOnCanceledListener(activity, FirebaseExtKt$$ExternalSyntheticLambda0.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asObservableTask$lambda$9$lambda$5(ObservableEmitter emitter, Exception exc) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onError(exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asObservableTask$lambda$9$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asObservableTask$lambda$9$lambda$7(ObservableEmitter emitter, Task task) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        emitter.onComplete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asObservableTask$lambda$9$lambda$8() {
        Timber.m9d("cancelled", new Object[0]);
    }

    public static final <TResult> Single<TResult> asSingleTask(final Task<TResult> task) {
        Intrinsics.checkNotNullParameter(task, "<this>");
        Single<TResult> create = Single.create(new SingleOnSubscribe() { // from class: com.iMe.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda7
            @Override // io.reactivex.SingleOnSubscribe
            public final void subscribe(SingleEmitter singleEmitter) {
                FirebaseExtKt.asSingleTask$lambda$12(Task.this, singleEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create { emitter ->\n    …values\"))\n        }\n    }");
        return create;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asSingleTask$lambda$12(Task this_asSingleTask, final SingleEmitter emitter) {
        Intrinsics.checkNotNullParameter(this_asSingleTask, "$this_asSingleTask");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this_asSingleTask.addOnFailureListener(new OnFailureListener() { // from class: com.iMe.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                FirebaseExtKt.asSingleTask$lambda$12$lambda$10(SingleEmitter.this, exc);
            }
        });
        final FirebaseExtKt$asSingleTask$1$2 firebaseExtKt$asSingleTask$1$2 = new FirebaseExtKt$asSingleTask$1$2(emitter);
        this_asSingleTask.addOnSuccessListener(new OnSuccessListener() { // from class: com.iMe.storage.data.utils.extentions.FirebaseExtKt$$ExternalSyntheticLambda5
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirebaseExtKt.asSingleTask$lambda$12$lambda$11(Function1.this, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asSingleTask$lambda$12$lambda$10(SingleEmitter emitter, Exception exc) {
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        if (emitter.isDisposed()) {
            return;
        }
        emitter.onError(exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void asSingleTask$lambda$12$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
