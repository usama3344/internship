import 'package:flutter/material.dart';
import 'package:internship/Provider/data_provider.dart';
import 'package:provider/provider.dart';

class DataListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Data List')),
      body: Center(
        child: dataProvider.isLoading
            ? const CircularProgressIndicator()
            : dataProvider.items.isNotEmpty
                ? ListView.builder(
                    itemCount: dataProvider.items.length,
                    itemBuilder: (context, index) {
                      final item = dataProvider.items[index];
                      return ListTile(
                        title: Text(item['title']),
                        subtitle: Text(item['body']),
                      );
                    },
                  )
                : const Text('No data available'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => dataProvider.fetchData(),
        child: Icon(Icons.refresh),
      ),
    );
  }
}
