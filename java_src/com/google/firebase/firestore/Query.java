package com.google.firebase.firestore;

import android.app.Activity;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.core.ActivityScope;
import com.google.firebase.firestore.core.AsyncEventListener;
import com.google.firebase.firestore.core.EventManager;
import com.google.firebase.firestore.core.ListenerRegistrationImpl;
import com.google.firebase.firestore.core.ViewSnapshot;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Executors;
import com.google.firebase.firestore.util.Preconditions;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* loaded from: classes3.dex */
public class Query {
    final FirebaseFirestore firestore;
    final com.google.firebase.firestore.core.Query query;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Query(com.google.firebase.firestore.core.Query query, FirebaseFirestore firebaseFirestore) {
        this.query = (com.google.firebase.firestore.core.Query) Preconditions.checkNotNull(query);
        this.firestore = (FirebaseFirestore) Preconditions.checkNotNull(firebaseFirestore);
    }

    public Task<QuerySnapshot> get() {
        return get(Source.DEFAULT);
    }

    public Task<QuerySnapshot> get(Source source) {
        validateHasExplicitOrderByForLimitToLast();
        if (source == Source.CACHE) {
            return this.firestore.getClient().getDocumentsFromLocalCache(this.query).continueWith(Executors.DIRECT_EXECUTOR, new Continuation() { // from class: com.google.firebase.firestore.Query$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.tasks.Continuation
                public final Object then(Task task) {
                    QuerySnapshot lambda$get$0;
                    lambda$get$0 = Query.this.lambda$get$0(task);
                    return lambda$get$0;
                }
            });
        }
        return getViaSnapshotListener(source);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ QuerySnapshot lambda$get$0(Task task) throws Exception {
        return new QuerySnapshot(new Query(this.query, this.firestore), (ViewSnapshot) task.getResult(), this.firestore);
    }

    private Task<QuerySnapshot> getViaSnapshotListener(final Source source) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        final TaskCompletionSource taskCompletionSource2 = new TaskCompletionSource();
        EventManager.ListenOptions listenOptions = new EventManager.ListenOptions();
        listenOptions.includeDocumentMetadataChanges = true;
        listenOptions.includeQueryMetadataChanges = true;
        listenOptions.waitForSyncWhenOnline = true;
        taskCompletionSource2.setResult(addSnapshotListenerInternal(Executors.DIRECT_EXECUTOR, listenOptions, null, new EventListener() { // from class: com.google.firebase.firestore.Query$$ExternalSyntheticLambda1
            @Override // com.google.firebase.firestore.EventListener
            public final void onEvent(Object obj, FirebaseFirestoreException firebaseFirestoreException) {
                Query.lambda$getViaSnapshotListener$1(TaskCompletionSource.this, taskCompletionSource2, source, (QuerySnapshot) obj, firebaseFirestoreException);
            }
        }));
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getViaSnapshotListener$1(TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, Source source, QuerySnapshot querySnapshot, FirebaseFirestoreException firebaseFirestoreException) {
        if (firebaseFirestoreException != null) {
            taskCompletionSource.setException(firebaseFirestoreException);
            return;
        }
        try {
            ((ListenerRegistration) Tasks.await(taskCompletionSource2.getTask())).remove();
            if (querySnapshot.getMetadata().isFromCache() && source == Source.SERVER) {
                taskCompletionSource.setException(new FirebaseFirestoreException("Failed to get documents from server. (However, these documents may exist in the local cache. Run again without setting source to SERVER to retrieve the cached documents.)", FirebaseFirestoreException.Code.UNAVAILABLE));
            } else {
                taskCompletionSource.setResult(querySnapshot);
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw Assert.fail(e, "Failed to register a listener for a query result", new Object[0]);
        } catch (ExecutionException e2) {
            throw Assert.fail(e2, "Failed to register a listener for a query result", new Object[0]);
        }
    }

    public ListenerRegistration addSnapshotListener(MetadataChanges metadataChanges, EventListener<QuerySnapshot> eventListener) {
        return addSnapshotListener(Executors.DEFAULT_CALLBACK_EXECUTOR, metadataChanges, eventListener);
    }

    public ListenerRegistration addSnapshotListener(Executor executor, MetadataChanges metadataChanges, EventListener<QuerySnapshot> eventListener) {
        Preconditions.checkNotNull(executor, "Provided executor must not be null.");
        Preconditions.checkNotNull(metadataChanges, "Provided MetadataChanges value must not be null.");
        Preconditions.checkNotNull(eventListener, "Provided EventListener must not be null.");
        return addSnapshotListenerInternal(executor, internalOptions(metadataChanges), null, eventListener);
    }

    private ListenerRegistration addSnapshotListenerInternal(Executor executor, EventManager.ListenOptions listenOptions, Activity activity, final EventListener<QuerySnapshot> eventListener) {
        validateHasExplicitOrderByForLimitToLast();
        AsyncEventListener asyncEventListener = new AsyncEventListener(executor, new EventListener() { // from class: com.google.firebase.firestore.Query$$ExternalSyntheticLambda2
            @Override // com.google.firebase.firestore.EventListener
            public final void onEvent(Object obj, FirebaseFirestoreException firebaseFirestoreException) {
                Query.this.lambda$addSnapshotListenerInternal$2(eventListener, (ViewSnapshot) obj, firebaseFirestoreException);
            }
        });
        return ActivityScope.bind(activity, new ListenerRegistrationImpl(this.firestore.getClient(), this.firestore.getClient().listen(this.query, listenOptions, asyncEventListener), asyncEventListener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addSnapshotListenerInternal$2(EventListener eventListener, ViewSnapshot viewSnapshot, FirebaseFirestoreException firebaseFirestoreException) {
        if (firebaseFirestoreException != null) {
            eventListener.onEvent(null, firebaseFirestoreException);
            return;
        }
        Assert.hardAssert(viewSnapshot != null, "Got event without value or error set", new Object[0]);
        eventListener.onEvent(new QuerySnapshot(this, viewSnapshot, this.firestore), null);
    }

    private void validateHasExplicitOrderByForLimitToLast() {
        if (this.query.hasLimitToLast() && this.query.getExplicitOrderBy().isEmpty()) {
            throw new IllegalStateException("limitToLast() queries require specifying at least one orderBy() clause");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Query) {
            Query query = (Query) obj;
            return this.query.equals(query.query) && this.firestore.equals(query.firestore);
        }
        return false;
    }

    public int hashCode() {
        return (this.query.hashCode() * 31) + this.firestore.hashCode();
    }

    private static EventManager.ListenOptions internalOptions(MetadataChanges metadataChanges) {
        EventManager.ListenOptions listenOptions = new EventManager.ListenOptions();
        MetadataChanges metadataChanges2 = MetadataChanges.INCLUDE;
        listenOptions.includeDocumentMetadataChanges = metadataChanges == metadataChanges2;
        listenOptions.includeQueryMetadataChanges = metadataChanges == metadataChanges2;
        listenOptions.waitForSyncWhenOnline = false;
        return listenOptions;
    }
}
